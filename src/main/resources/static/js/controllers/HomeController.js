angular.module('myModule', [ 'ui.bootstrap' ]);

angular.module('rsvp', []).controller('HomeController', function($scope, $http) {
	this.formData = {};
	
	var self = this;

	this.submitForm = function() {
		$http({
			method : 'POST',
			url : '/invitees',
			data : self.formData
		}).success(function(data) {
			console.log(data);
		});
	};
});