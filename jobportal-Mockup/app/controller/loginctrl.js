app.controller('loginController', ['$scope','Restangular','$rootScope', function($scope,$rootScope,Restangular) {
$scope.data={
"email":"",
"password":""
}
 /* $scope.showPassword = false;
    $scope.toggleShowPassword = function() {
	$scope.showPassword = !$scope.showPassword;
	} */
 $scope.submit=function(){
 Restangular.all('emplogin').post($scope.data).then(function(response){
 $scope.result = response;

 $rootScope.loginid = [];
 angular.forEach( $scope.result, function(login) {
 $rootScope.loginid.push(login.empprofileid);
 });

if(response.STATUS == "LOGIN SUCCESSFULL"){
	alert("login success")
}
else{
	alert("Invalid Login Details")
}
})
}
}]);
