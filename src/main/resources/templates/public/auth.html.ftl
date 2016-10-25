<#import "macros/template.html.ftl" as t />
<@t.page title="custom page title">
	<div ng-controller="AuthController as authController">
		<form name="loginForm" class="form-horizontal" ng-submit="loginForm.$valid && authController.login()" novalidate>
			<fieldset>
				<legend>Login</legend>
				error={{authController.error}}
				<div class="form-group">
					<label class="col-md-4 control-label" for="username">Username</label>
					<div class="col-md-6">
						<input ng-model="authController.credentials.username" id="username" name="username" type="text" placeholder="Username" class="form-control input-md" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="guestNames">Password</label>
					<div class="col-md-6">
						<input ng-model="authController.credentials.password" id="password" name="password" type="password" placeholder="Password" class="form-control input-md" required>
					</div>
				</div>	
				<div class="form-group">
					<div class="col-md-1 col-md-offset-9">
						<button class="btn btn-default pull-right">Login</button>
					</div>
				</div>							
			</fieldset>
		</form>
	</div>
	<script src="/js/controllers/public/AuthController.js"></script>
</@t.page>