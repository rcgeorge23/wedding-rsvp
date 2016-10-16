angular.module('rsvp', []).controller('ManageGuestsController', function($scope, $http) {
	var self = this;
	$http.get('/invitees').then(function(response) {
        self.invitees = response.data._embedded.invitees;
    });
});