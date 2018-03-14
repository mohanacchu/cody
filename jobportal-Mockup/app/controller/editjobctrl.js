app.controller('editjob', ['$scope','Restangular', function($scope,Restangular) {
    $scope.editablerow={
        "id":"",
        "company_name": "",
      "domain_name": "",
      "position": "",
      "experiance": "",
      "skills": "",
      "pakage": "",
      "location": "",
      "qualification": ""
    }
    
    
    
    
    
Restangular.one('viewempjobs/'+ 46).get().then(function(response){
$scope.result = response.jobs;
})

$scope.editContent = function(content) { 
        $scope.editablerow = angular.copy(content);   
	
 }
 $scope.loadTemplate = function(content) { 
    if (content.id === $scope.editablerow.id) return 'edit';
        else return 'view';
 }
 $scope.saveData = function (indx) {
  Restangular.all('').post($scope.editablerow).then(function(response){
	  $scope.editablerow =response;
	  })
 
   console.log($scope.editablerow)
  
        
    };


    
$scope.modify = function(){

        $scope.modifyField = true;
        $scope.viewField = true;
    };


    $scope.update = function(){
        $scope.modifyField = false;
        $scope.viewField = false;
        Restangular.all('editemployer').post($scope.data).then(function(response){
$scope.result = response;
})

    };
    
    
}]);