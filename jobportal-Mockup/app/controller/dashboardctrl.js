
app.controller('aaa', ['$scope','Restangular','$rootScope', function($scope,Restangular,$rootScope) {
   


Restangular.one('contacted/'+ $rootScope.loginid).get().then(function(response){
$scope.result = response;
})

Restangular.one('notify/'+ $rootScope.loginid).get().then(function(response){
$scope.result1 = response;
})

Restangular.one('shortlist/'+ $rootScope.loginid).get().then(function(response){
$scope.result2 = response;
})

Restangular.one('closed/'+ $rootScope.loginid).get().then(function(response){
$scope.result3 = response;
})

Restangular.one('apply/'+ $rootScope.loginid).get().then(function(response){
$scope.result4 = response;
})

Restangular.one('totaljobsposted/'+ $rootScope.loginid).get().then(function(response){
$scope.result5 = response;
})

}]);



   


