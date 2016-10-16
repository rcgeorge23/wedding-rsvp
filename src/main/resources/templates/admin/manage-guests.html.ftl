<#import "macros/template.html.ftl" as t />
<@t.page title="Manage Guests">
	<div ng-controller="ManageGuestsController as manageGuestsController">
		<table st-table="invitees" class="table table-striped">
			<thead>
			<tr>
				<th st-sort="guestNames">Guest Names</th>
				<th st-sort="emailAddress">Email Address</th>
				<th st-sort="numberOfGuests">Number Of Guests</th>
				<th st-sort="foodPreferences">Food Preferences</th>
			</tr>
			</thead>
			<tbody>
			<tr ng-repeat="invitee in manageGuestsController.invitees">
				<td>{{invitee.guestNames}}</td>
				<td>{{invitee.emailAddress}}</td>
				<td>{{invitee.numberOfGuests}}</td>
				<td>{{invitee.foodPreferences}}</td>
			</tr>
			</tbody>
		</table>	
	</div>
	<script src="/js/controllers/admin/ManageGuestsController.js"></script>
</@t.page>