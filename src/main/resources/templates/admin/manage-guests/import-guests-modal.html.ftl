<div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" ng-click="importGuestsModalController.cancel()" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h4 class="modal-title">Import Guests</h4>
	</div>
	<div class="modal-body">
		<form name="importGuestsForm" class="form-horizontal" novalidate>
			<div class="form-group">
				<label class="col-md-3 control-label" for="username">Excel or CSV file</label>
				<div class="col-md-9">
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
		</form>
	</div>
	<div class="modal-footer">
		<button type="button" ng-click="importGuestsModalController.cancel()" class="btn btn-default" data-dismiss="modal">Cancel</button>
		<button type="button" ng-click="importGuestsModalController.import()" class="btn btn-primary" data-dismiss="modal">Import</button>
	</div>
</div>
