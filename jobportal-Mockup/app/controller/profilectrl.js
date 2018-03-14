

app.controller('myprofilectrl', ['$scope','$rootScope','Restangular', function($scope,$rootScope,Restangular) {
    $scope.data={
        
	"id":"",
	"name":"",
	"address":"",
	"mobile":"",
	"email":"",
	"state":"",
	"city":"",
	"zip":""

    }
    Restangular.one('viewstates').get().then(function(response){
 $scope.states = response; 
 })
    Restangular.one('viewcity').get().then(function(response){
 $scope.citys = response;
 })
Restangular.one('viewEmpProfiles/'+$rootScope.loginid).get().then(function(response){
$scope.results = response;
})




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

/*$scope.edit = function(id) {
                                //search user and update it
                                    $scope.objectIndex = id;
                                                $scope.userObject = angular.copy($scope.results[id]);
                                                console.log($scope.objectIndex);
                                }

                                $scope.save = function() {
                                                console.log($scope.objectIndex);
                                                if($scope.results[$scope.objectIndex] == null) {
                                                                //if this is new record, add it in users array
                                                                $scope.results.push($scope.userObject);
                                                } else {
                                                                //for existing record, find this record using id
                                                                //and update it.
                                                                                $scope.results[$scope.objectIndex] = $scope.userObject;
                                                }

                                                //clear the add record form
                                                $scope.userObject = {};
                                                $scope.objectIndex = '';
                                }*/

}]);
