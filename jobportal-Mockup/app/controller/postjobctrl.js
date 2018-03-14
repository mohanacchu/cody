app.controller('jobCtrl', ['$scope','Restangular', function($scope,Restangular) {
$scope.data={
    "empid":"46",
 "domain_name":"",
 "company_name":"",
 "position":"",
 "experiance":"",
 "skills":"",
 "pakage":"",
 "qualification":"",
 "location":""

} 
 Restangular.one('viewdomains').get().then(function(response){
 $scope.domainss = response;
 })
 Restangular.one('viewcity').get().then(function(response){
 $scope.citys= response;
 })
 
	
 $scope.post=function(){
 Restangular.all('jobpost').post($scope.data).then(function(response){
 $scope.posts = response; 
 if(response.status == "SUCCESSFULLY POSTED"){
	/*myFunction();*/
     alert("success");
}
else{
	 alert("failure");
    /*myFunc();*/
}
 })
}

 
 function myFunction() {
    var x = document.getElementById("snackbar")
    x.innerHTML=response.status;
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
    
   /* function myFunc() {
    var x = document.getElementById("snack")
    x.innerHTML=response.status;
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}*/
 
 
 
 
 
 
}]);