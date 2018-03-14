
app.controller('apply', ['$scope','Restangular', function($scope,Restangular) {
Restangular.one('viewprofiles').get().then(function(response){
$scope.result = response;
})

}]);
