angular.module('myModule', [ 'ui.bootstrap' ]);

angular.module('rsvp', []).controller('HomeController', function($scope, $http) {
	this.formData = {};

	this.submitForm = function() {
		$http({
			method : 'POST',
			url : '/invitees',
			data : $scope.formData
		}).success(function(data) {
			console.log(data);
		});
	};
});