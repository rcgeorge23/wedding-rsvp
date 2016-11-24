#!/bin/bash

SCRIPT_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cdToProjectRoot() {
	#Assumes the script lives in <project_root>/scripts
	cd $SCRIPT_DIRECTORY/..
}

gitCommitPush() {
	cdToProjectRoot
	COMMENT="$1"
	git add .
	git commit -am "${COMMENT}"
	git push origin master
}

gitTagPush() {
	cdToProjectRoot
	VERSION="$1"
	TAG_NAME="RELEASE-${VERSION}"
	git tag RELEASE-$VERSION
	git push origin --tags
}

getCurrentProjectVersion() {
    echo "$(mvn org.apache.maven.plugins:maven-help-plugin:evaluate -Dexpression=project.version | grep -e '^[[:digit:]]')"
}

getJarName() {
	echo "$(mvn org.apache.maven.plugins:maven-help-plugin:evaluate -Dexpression=project.build.finalName | grep -e '^rsvp*').jar"
}

renameJar() {
	FROM="$SCRIPT_DIRECTORY/target/$1"
	TO="$SCRIPT_DIRECTORY/target/$2"
	echo "Renaming release jar from $FROM to $TO" 
	mv $FROM $TO
}

logMessage() {
	MESSAGE="$1"
	echo "==============================================================================="
	echo "${MESSAGE}"
	echo "==============================================================================="
}

ORIGINAL_SNAPSHOT_JAR_NAME=getJarName

logMessage "Removing -SNAPSHOT from version number in pom.xml"
mvn build-helper:parse-version versions:set -DnewVersion=\${parsedVersion.majorVersion}.\${parsedVersion.minorVersion}.\${parsedVersion.incrementalVersion} versions:commit

RELEASE_JAR_NAME=getJarName

#Commit release version pom, rename jar and tag release
CURRENT_PROJECT_VERSION=$(getCurrentProjectVersion)
logMessage "Committing release ${CURRENT_PROJECT_VERSION} to source git repo"
renameJar ORIGINAL_SNAPSHOT_JAR_NAME RELEASE_JAR_NAME
gitCommitPush "Releasing version ${CURRENT_PROJECT_VERSION}"
gitTagPush "${CURRENT_PROJECT_VERSION}" 

#Prepare next snapshot
mvn build-helper:parse-version versions:set -DnewVersion=\${parsedVersion.majorVersion}.\${parsedVersion.minorVersion}.\${parsedVersion.nextIncrementalVersion}-SNAPSHOT versions:commit
NEXT_PROJECT_SNAPSHOT_VERSION=$(getCurrentProjectVersion)
logMessage "Incremented project to next snapshot version: ${NEXT_PROJECT_SNAPSHOT_VERSION}"
gitCommitPush "Prepared next snapshot ${NEXT_PROJECT_SNAPSHOT_VERSION}"

#Push jar to release git repo
#todo...