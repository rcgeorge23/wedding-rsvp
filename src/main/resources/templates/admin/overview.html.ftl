<#import "macros/template.html.ftl" as t />
<@t.page title="Overview" menu="menus/overview-menu.html.ftl">
	<div ng-controller="InviteeController as inviteeController">
		<form class="form-horizontal" ng-submit="inviteeController.submitForm()" novalidate>
			<fieldset>
				<div class="form-group">
					<label class="col-md-4 control-label" for="guestNames">Guests *</label>
					<div class="col-md-6">
						<input ng-model="inviteeController.formData.guestNames" id="guestNames" name="guestNames" type="text" placeholder="Names of all guests attending" class="form-control input-md" required>
					</div>
				</div>
	
				<div class="form-group">
					<label class="col-md-4 control-label" for="numberOfGuests">Number of guests attending (including yourself) *</label>
					<div class="col-md-6">
						<select ng-model="inviteeController.formData.numberOfGuests" id="numberOfGuests" name="numberOfGuests" class="form-control" required>
							<option value="" selected disabled>Please select</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="0">We cannot attend</option>
						</select>
					</div>
				</div>
	
				<div class="form-group">
					<label class="col-md-4 control-label" for="foodPreferences">Food preferences for all guests, including any allergies</label>
					<div class="col-md-6">
						<textarea ng-model="inviteeController.formData.foodPreferences" class="form-control" id="foodPreferences" name="foodPreferences"></textarea>
					</div>
				</div>
	
				<div class="form-group">
					<label class="col-md-4 control-label" for="emailAddress">Your email address *</label>
					<div class="col-md-6">
						<div class="input-group">
							<span class="input-group-addon">@</span>
							<input ng-model="inviteeController.formData.emailAddress" id="emailAddress" name="emailAddress" class="form-control" placeholder="" type="email" required>
						</div>
					</div>
				</div>
	
				<div class="form-group">
					<div class="col-md-1 col-md-offset-9">
						<button class="btn btn-default pull-right">RSVP</button>
					</div>
				</div>
			</fieldset>
		</form>
		<pre>{{ inviteeController.formData }}</pre>
	</div>
	<script src="/js/controllers/admin/InviteeController.js"></script>
</@t.page>