app.controller('savejob', ['$scope','Restangular', function($scope,Restangular) {



Restangular.one('getsavedjobs/' +39).get().then(function(response) {
             $scope.data= response.SAVED_JOBS;


})


Restangular.one('gettotalsavedjobs/' +39).get().then(function(response) {
             $scope.job= response;


})
Restangular.one('totaljobs').get().then(function(response) {
             $scope.jobs= response;

})
}]);
