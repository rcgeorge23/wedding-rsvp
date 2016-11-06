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

rsvp.controller('ImportGuestsModalController', function($uibModalInstance, $http) {
	var self = this;
	
	this.cancel = function () {
		$uibModalInstance.dismiss('cancel');
	};
	
	this.import = function () {
		if (self.file == null) {
			alert("no file selected");
			return;
		}
		
	    var fd = new FormData();
	    fd.append("file", self.file);

	    $http.post('/admin/manage-guests/import-guests-modal', fd, {
	        headers: {'Content-Type': undefined },
	        transformRequest: angular.identity
	    }).success(function(data) {
	    	console.debug("success");
	    }).error(function(data) {
	    	console.debug("error");
	    });
	};
});
