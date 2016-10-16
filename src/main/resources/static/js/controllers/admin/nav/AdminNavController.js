angular.module('rsvp', []).controller('AdminNavController', function($scope, $http) {
	$scope.items = [
	                   {
	                       name: "item1",
	                       desc: "Item 1",
	                       subitems: [
	                           {
	                               name: "subitem1",
	                               desc: "Sub-Item 1"
	                           },
	                           {
	                               name: "subitem2",
	                               desc: "Sub-Item 2"
	                           },
	                           {
	                               name: "subitem2",
	                               desc: "Sub-Item 2"
	                           }]
	                   },
	                   {
	                       name: "item2",
	                       desc: "Item 2",
	                       subitems: [
	                           {
	                               name: "subitem1",
	                               desc: "Sub-Item 1"
	                           },
	                           {
	                               name: "subitem2",
	                               desc: "Sub-Item 2"
	                           },
	                           {
	                               name: "subitem2",
	                               desc: "Sub-Item 2"
	                           }]
	                   },
	                   {
	                       name: "item3",
	                       desc: "Item 3",
	                       subitems: [
	                           {
	                               name: "subitem1",
	                               desc: "Sub-Item 1"
	                           },
	                           {
	                               name: "subitem2",
	                               desc: "Sub-Item 2"
	                           },
	                           {
	                               name: "subitem2",
	                               desc: "Sub-Item 2"
	                           }]
	                   }
	               ];
		$scope.default = $scope.items[2];
});