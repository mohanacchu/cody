		 app.controller('pswCtrl', ['$scope','Restangular', function($scope,Restangular) {
$scope.data={
 "emailid":""

}	
 $scope.submit=function(){
 Restangular.all('empforgotpassword').post($scope.data).then(function(response){
 $scope.result = response;

if(response.status == "success"){
	alert("success")
}
else{
	alert("failure")
} 
})
}
}]);