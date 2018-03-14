app.controller('abc', ['$scope','Restangular', function($scope,Restangular) {

Restangular.one('getnotified/'+45).get().then(function(response){
$scope.result = response.NOTIFIED_PROFILES;
})
Restangular.one('getclosed/'+45).get().then(function(response){
$scope.result1 = response.CLOSED_PROFILES;
})
Restangular.one('getshortlisted/'+45).get().then(function(response){
$scope.result2 = response.SHORTLISTED_PROFILES;
})
}]);
