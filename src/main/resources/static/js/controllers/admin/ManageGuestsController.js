rsvp.controller('ManageGuestsController', function($scope, $http, $uibModal) {
	var self = this;
	
	$http.get('/invitees').then(function(response) {
        self.invitees = response.data._embedded.invitees;
    });
	
	self.openImportModal = function() {
		$uibModal.open({
			templateUrl: '/admin/manage-guests/import-guests-modal',
			controller: 'ImportGuestsModalController',
			controllerAs: 'importGuestsModalController',
			bindToController: true
		});
	};
});

rsvp.controller('ImportGuestsModalController', function($uibModalInstance) {
	var self = this;
	
	this.cancel = function () {
		$uibModalInstance.dismiss('cancel');
	};
});
