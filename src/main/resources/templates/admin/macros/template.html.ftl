<#import "nav.html.ftl" as n />
<#macro page title menu>
	<html>
		<head>
			<link rel="stylesheet" href="/css/twitter-bootstrap/bootstrap.min.css" />
			<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
			<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
			<script src="/js/angular/angular.min.js"></script>
			<script src="/js/angular/angular-animate.min.js"></script>
			<script src="/js/angular/angular-touch.min.js"></script>
			<script src="/js/angular/ui-bootstrap-tpls-2.1.4.min.js"></script>
			<script src="/js/angular/smart-table.min.js"></script>
			
			<link rel="stylesheet" href="/css/rsvp.css" />
			<link rel="stylesheet" href="/css/rsvp-admin.css" />
		</head>
		<body ng-app="rsvp" ng-cloak>
			<script src="/js/Rsvp.js"></script>
	  			<div class="row">
	  				<div class="col-sm-12">
	  					<@n.nav title="${title}" menu="${menu}"></@n.nav>
						<#nested />
	  				</div> 
				</div>
		</body>
	</html>
</#macro>