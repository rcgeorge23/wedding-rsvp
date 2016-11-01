angular.module('rsvp', []).controller('AuthController', function($rootScope, $scope, $http, $location) {
	this.formData = {};
	
	var self = this;

	var authenticate = function(credentials, callback) {
	    $http({
	    	url: 'login',
	    	method: 'POST',
	    	params: credentials,
	    	headers: { "content-type": "application/x-www-form-urlencoded" }
	    }).then(function(response) {
	      if (response.data.name) {
	        $rootScope.authenticated = true;
	      } else {
	        $rootScope.authenticated = false;
	      }
	      callback && callback();
	    }, function() {
	      $rootScope.authenticated = false;
	      callback && callback();
	    });
	};

	self.credentials = {};
	
	self.login = function() {
		authenticate(self.credentials, function() {
			if ($rootScope.authenticated) {
				$location.path("/admin");
	          	self.error = false;
	        } else {
	        	$location.path("/auth");
	        	self.error = true;
	        }
		});
	};
});