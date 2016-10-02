angular.module('myModule', ['ui.bootstrap']);

angular.module('rsvp', []).controller('FrontEndController', function($scope) {
    $scope.greeting = {id: 'xxx', content: 'Hello World!'}
});		