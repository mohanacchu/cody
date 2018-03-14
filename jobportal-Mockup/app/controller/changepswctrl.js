	 app.controller('pswCtrl', ['$scope','Restangular', function($scope,Restangular) {
$scope.data={
 "emailid":"",
 "currentpassword":"",
 "newpassword":""
}
 $scope.submit=function(){
 Restangular.all('employerpswchange').post($scope.data).then(function(response){
 $scope.result = response;

if(response.message == "PASSWORD CHANGE SUCCESSFULLY"){
	alert("success")
}
else{
	alert("failure")
}
})
}
}]);
