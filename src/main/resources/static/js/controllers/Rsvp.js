angular.module('myModule', [ 'ui.bootstrap' ]);

angular.module('rsvp', []).controller('HomeController', function($scope, $http) {
	$scope.formData = {};

	$scope.submitForm = function() {
		$http({
			method : 'PUT',
			url : '/invitee/register',
			data : $scope.formData
		}).success(function(data) {
			console.log(data);
		});
	};
});