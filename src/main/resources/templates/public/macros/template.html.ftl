<#macro page title>
	<html>
		<head>
			<link rel="stylesheet" href="/css/twitter-bootstrap/bootstrap.min.css" />
			<link rel="stylesheet" href="/css/rsvp.css" />
			<script src="/js/angular/angular.min.js"></script>
			<script src="/js/angular/ui-bootstrap-tpls-2.1.4.min.js"></script>
		</head>
		<body ng-app="rsvp" ng-cloak>
			<script src="/js/Rsvp.js"></script> 
			<#nested />
		</body>
	</html>
</#macro>