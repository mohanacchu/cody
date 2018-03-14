
app.controller('notify', ['$scope','Restangular', function($scope,Restangular) {
Restangular.one('getnotified/'+46).get().then(function(response){
$scope.result = response.NOTIFIED_PROFILES;
})

Restangular.one('totaljobsposted/' +46).get().then(function(response){
 $scope.result2 = response;
 })
}]);

