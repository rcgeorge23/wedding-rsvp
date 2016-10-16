<#macro page title>
<html>
	<head>
		<link rel="stylesheet" href="/css/bootstrap.min.css" />
		<script src="/js/angular.min.js"></script>
		<script src="/js/ui-bootstrap-tpls-2.1.4.min.js"></script>
	</head>
	<body ng-app="rsvp" ng-cloak> 
		<#nested />
	</body>
</html>
</#macro>