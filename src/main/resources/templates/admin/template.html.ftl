<#import "nav.html.ftl" as n />
<#macro page title>
	<html>
		<head>
			<link rel="stylesheet" href="/css/twitter-bootstrap/bootstrap.min.css" />
			<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
			<script src="/js/angular/angular.min.js"></script>
			<script src="/js/angular/ui-bootstrap-tpls-2.1.4.min.js"></script>
			
			<link rel="stylesheet" href="/css/rsvp.css" />
			<link rel="stylesheet" href="/css/rsvp-admin.css" />
		</head>
		<body ng-app="rsvp" ng-cloak>
			<script src="/js/Main.js"></script>
			<@n.nav title="${title}"></@n.nav> 
			<#nested />
			<script src="/js/controllers/admin/nav/AccordionDemoCtrl.js"></script>
		</body>
	</html>
</#macro>