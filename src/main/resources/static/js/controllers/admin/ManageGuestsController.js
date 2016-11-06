rsvp.controller('ManageGuestsController', function($scope, $http, $uibModal) {
	var self = this;
	
	$http.get('/invitees').then(function(response) {
        self.invitees = response.data._embedded.invitees;
    });
	
	self.openImportModal = function() {
		console.debug("hello");
		$uibModal.open({
			templateUrl: '/admin/manage-guests/import-guests-modal'
		});
	};
});

