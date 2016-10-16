<#import "macros/template.html.ftl" as t />
<@t.page title="Manage Guests">
	<div ng-controller="ManageGuestsController as manageGuestsController">
		<table st-table="manageGuestsController.invitees" class="table table-striped">
			<thead>
			<tr>
				<th>ID</th>
				<th>Guest Names</th>
				<th>Email Address</th>
				<th>Number Of Guests</th>
				<th>Food Preferences</th>
			</tr>
			</thead>
			<tbody>
			<tr ng-repeat="invitee in manageGuestsController.invitees">
				<td>{{invitee.id}}</td>
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