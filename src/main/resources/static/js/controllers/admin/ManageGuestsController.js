rsvp.controller('ManageGuestsController', function($scope, $http) {
	var self = this;
	console.debug("rsvp", rsvp);
	$http.get('/invitees').then(function(response) {
        self.invitees = response.data._embedded.invitees;
    });
});

