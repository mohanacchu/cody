app.controller('applyJob', ['$scope','Restangular', function($scope,Restangular) {



Restangular.one('getappliedjobs/' +39).get().then(function(response) {
             $scope.data= response.APPLIED_JOBS;

})
Restangular.one('gettotalappliedjobs/' +39).get().then(function(response) {
             $scope.apply= response;

})
Restangular.one('totaljobs').get().then(function(response) {
             $scope.jobs= response;

})

}]);
