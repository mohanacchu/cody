app.controller('hey', ['$scope','Restangular', function($scope,Restangular) {
$scope.data={
  "candid":"39",
  "jobid":"71"
}

Restangular.one('viewmorejobs/1').get().then(function(response) {
             $scope.data= response;

})

Restangular.one('totaljobs').get().then(function(response) {
             $scope.jobs= response;

})
$scope.save=function(){
Restangular.all('savejob').post($scope.data).then(function(response) {
             $scope.data= response;
             if(response.status == "SUCCESSFULLY SAVED JOBS"){
               alert("success");
             }else {
              alert("ALLREADY SAVED");
             }

})
}

$scope.apply=function(){
Restangular.all('applyjob').post($scope.data).then(function(response) {
             $scope.data= response;
             $scope.data= response;
             if(response.status == "SUCCESSFULLY APPLIED"){
               alert("success");
             }else {
              alert("ALLREADY APPLIED ");
             }

})
}
}]);
