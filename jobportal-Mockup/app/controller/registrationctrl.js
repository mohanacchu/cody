app.controller('erController', ['$scope','$state','Restangular', function($scope,$state,Restangular) {
$scope.data={
 "name":"",
 "mobile":"",
"address":"",
"state":"",
"city":"",
"zip":"",
"email":"",
"password":"",
"confirm_password":""

}
Restangular.one('viewstates').get().then(function(response){
 $scope.states = response;
 })
 Restangular.one('viewcity').get().then(function(response){
 $scope.citys = response;
 })

 $scope.submit=function(){
 Restangular.all('empprofiles').post($scope.data).then(function(response){
 $scope.result = response;
 if(response.status == "SUCCESSFULLY REGISTERED"){
	$state.go('session.dashboard');
}
else{
	myFunction();
}
})
}


    function myFunction() {
    var x = document.getElementById("snack")


    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
console.log($scope.data)
}]);
