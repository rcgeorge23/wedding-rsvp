(function(orig) {
    angular.modules = [];
    angular.module = function() {
        if (arguments.length > 1) {
            angular.modules.push(arguments[0]);
        }
        return orig.apply(null, arguments);
    }
})(angular.module);

var rsvp = angular.module('rsvp', ['ui.bootstrap', 'smart-table', 'ui.bootstrap.modal']);

rsvp.directive("fileread", function() {
    return {
        scope: {
            fileread: "="
        },
        link: function (scope, element, attributes) {
            element.bind("change", function(e) {
                scope.$apply(function() {
                    scope.fileread = e.target.files[0];
                });
                if (attributes.onread !== undefined) {	
                	console.debug("attributes.onread", attributes.onread);
                	scope.$apply(attributes.onread);
                } 
            });
        }
    }
});
