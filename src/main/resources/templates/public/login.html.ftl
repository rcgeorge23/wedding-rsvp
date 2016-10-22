<#import "macros/template.html.ftl" as t />
<@t.page title="custom page title">
	<div ng-controller="LoginController as loginController">
		<form name="loginForm" class="form-horizontal">
			<fieldset>
				<legend>Login</legend>

			</fieldset>
		</form>
	</div>
	<script src="/js/controllers/public/LoginController.js"></script>
</@t.page>