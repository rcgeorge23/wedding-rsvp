<div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" ng-click="importGuestsModalController.cancel()" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h4 class="modal-title">Import Guests</h4>
	</div>
	<div class="modal-body">
		<form name="importGuestsForm" class="form-horizontal" novalidate>
			<div class="row-fluid">
				<div class="form-group">
					<label class="col-md-2 control-label" for="username">Excel or CSV file</label>
					<div class="col-md-10">
						<div class="input-group">
	                		<label class="input-group-btn">
	                    		<span class="btn btn-primary">
	                        		Browse… <input fileread="importGuestsModalController.file" type="file" style="display: none;">
	                    		</span>
	                		</label>
	                		<input type="text" class="form-control" readonly="" value="{{importGuestsModalController.file.name}}" />
	            		</div>		
	            	</div>			
				</div>
			</div>
			<div class="row-fluid">
				<table st-table="invitees" class="table table-striped table-hover">
					<thead>
						<tr>
							<th st-sort="guestNames">Guest Names</th>
							<th st-sort="emailAddress">Email Address</th>
							<th st-sort="numberOfGuests">Number Of Guests</th>
							<th st-sort="foodPreferences">Food Preferences</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</form>
	</div>
	<div class="modal-footer">
		<button type="button" ng-click="importGuestsModalController.cancel()" class="btn btn-default" data-dismiss="modal">Cancel</button>
		<button type="button" ng-click="importGuestsModalController.import()" class="btn btn-primary" data-dismiss="modal">Import</button>
	</div>
</div>
