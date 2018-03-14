
app.controller('contact', ['$scope','Restangular', function($scope,Restangular) {
Restangular.one('getcontacted/'+46).get().then(function(response){
$scope.result = response.CONTACTED_PROFILES;
})

Restangular.one('totaljobsposted/' +46).get().then(function(response){
 $scope.result2 = response;
 })
}]);
