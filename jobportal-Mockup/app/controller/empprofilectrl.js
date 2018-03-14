 app.controller('profile',['$scope','Restangular', function($scope,Restangular) {
$scope.data={
    "candid":67, 
    "empid":46 
}



 Restangular.one('viewprofiles').get().then(function(response){
 $scope.result = response;
 })
 
 
 
 /*=============notify starts===========*/
$scope.notify=function(){
  Restangular.all('notify').post($scope.data).then(function(response){
  $scope.user2 = response;
      $scope.not= response.status;
      $scope.noti= response.error;
      if($scope.not == "SUCCESSFULLY NOTIFIED"){
	succes();
}
else{
	failur();
}
})
}
function succes() {
    var x = document.getElementById("snackbar")
    x.innerHTML=$scope.not;
    
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
    
   function failur() {
    var x = document.getElementById("snack")
    x.innerHTML=$scope.noti;
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}

/*=============end===========*/

/*=============Shortlist starts===========*/
  $scope.shortlist=function(){
  Restangular.all('shortlist').post($scope.data).then(function(response){
  $scope.user1 = response;
      if(response.status == "SUCCESSFULLY SHORTLISTED"){
	alert("SUCCESS")
}
else{
	alert("ALLREADY SHORTLISTED ");
}
})

}
  
  /*=============end===========*/
  
  
  
  /*=============closed starts===========*/
$scope.close=function(){
  Restangular.all('closed').post($scope.data).then(function(response){
  $scope.result1 = response;
      if(response.status == "CLOSED"){
	alert("SUCCESS")
}
else{
	alert( "ALLREADY CLOSED");
}
})

}

/*=============end===========*/


/*========shortlist stars==========*/
$scope.shortlist=function(){
  Restangular.all('shortlist').post($scope.data).then(function(response){
  $scope.user1 = response;
      $scope.sh= response.status;
      $scope.short= response.error;
     if($scope.sh == "SUCCESSFULLY SHORTLISTED"){
	success();
}
else{
	failure();
}
})

}
function success() {
    var x = document.getElementById("snackbar")
    x.innerHTML=$scope.sh;
    
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
    
   function failure() {
    var x = document.getElementById("snack")
    x.innerHTML=$scope.short;
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
/*=============end===========*/



/*===============contacted starts===============*/
$scope.contact=function(){
  Restangular.all('contacted').post($scope.data).then(function(response){
  $scope.user1 = response;
      $scope.con= response.status;
      $scope.cont= response.error;
      if($scope.con == "CONTACTED"){
	myFunction();
}
else{
	myFunc();
}
})

}





function myFunction() {
    var x = document.getElementById("snackbar")
    x.innerHTML=$scope.con;
    
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
    
   function myFunc() {
    var x = document.getElementById("snack")
    x.innerHTML=$scope.cont;
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
}]);
