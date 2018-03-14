app.controller('loginController1',['$scope','$state','$rootScope','Restangular','toaster',function($scope,$state,$rootScope,Restangular,toaster){
$scope.data={
"email":"",
"password":""
}


	$scope.submit=function(){

  Restangular.all('emplogin').post($scope.data).then(function(response){
$scope.result = response.Profile;
 console.log($scope.result);


if(response.STATUS == "LOGIN SUCCESSFULL"){
	$state.go('session.dashboard');
}
else{
	/*toaster.pop('success', "Invalid Login details", 5000);*/
    myFunction();
}


 $rootScope.loginid = [];
 angular.forEach( $scope.result, function(login) {
 $rootScope.loginid.push(login.id);
 });
})
}

    function myFunction() {
    var x = document.getElementById("snack")


    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}

}]);
