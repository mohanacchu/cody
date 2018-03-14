

		app.controller('pswctrl', ['$scope','Restangular', function($scope,Restangular) {
$scope.data={
 "emailid":"",
 "currentpassword":"",
 "newpassword":""
}
 $scope.change_password=function(){
 Restangular.all('jobseekerpswchange').post($scope.data).then(function(response){
 $scope.result = response;

if(response.message ==  "PASSWORD CHANGE SUCCESSFULLY"){
	alert("success")
}
else{
	alert("failure")
}
})
}
}]);
