
app.controller('closed', ['$scope','Restangular', function($scope,Restangular) {
Restangular.one('getclosed/'+46).get().then(function(response){
$scope.result1 = response.CLOSED_PROFILES;
})

Restangular.one('totaljobsposted/' +46).get().then(function(response){
 $scope.result2 = response;
 })
}]);
