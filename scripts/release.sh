#!/bin/bash

gitCommitPush() {
	COMMENT="$1"
	git add .
	git commit -am "${COMMENT}"
	git push origin master
}

gitTagPush() {
	VERSION="$1"
	TAG_NAME="RELEASE-${VERSION}"
	git tag RELEASE-$VERSION
	git push origin --tags
}

getCurrentProjectVersion() {
    echo "$(mvn org.apache.maven.plugins:maven-help-plugin:evaluate -Dexpression=project.version | grep -e '^[[:digit:]]')"
}

logMessage() {
	MESSAGE="$1"
	echo "==============================================================================="
	echo "${MESSAGE}"
	echo "==============================================================================="
}

logMessage "Removing -SNAPSHOT from version number in pom.xml"
mvn build-helper:parse-version versions:set -DnewVersion=\${parsedVersion.majorVersion}.\${parsedVersion.minorVersion}.\${parsedVersion.incrementalVersion} versions:commit

#Commit release version pom and tag release
CURRENT_PROJECT_VERSION=$(getCurrentProjectVersion)
logMessage "Committing release ${CURRENT_PROJECT_VERSION} to git repo"
gitCommitPush "Releasing version ${CURRENT_PROJECT_VERSION}"
gitTagPush "${CURRENT_PROJECT_VERSION}" 

#Prepare next snapshot
mvn build-helper:parse-version versions:set -DnewVersion=\${parsedVersion.majorVersion}.\${parsedVersion.minorVersion}.\${parsedVersion.nextIncrementalVersion}-SNAPSHOT versions:commit
NEXT_PROJECT_SNAPSHOT_VERSION=$(getCurrentProjectVersion)
logMessage "Incremented project to next snapshot version: ${NEXT_PROJECT_SNAPSHOT_VERSION}"
gitCommitPush "Prepared next snapshot ${NEXT_PROJECT_SNAPSHOT_VERSION}"
