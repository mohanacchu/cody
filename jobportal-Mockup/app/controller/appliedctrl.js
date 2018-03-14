
app.controller('apply', ['$scope','Restangular', function($scope,Restangular) {

    $scope.data={
    "candid":67,
    "empid":46
}


Restangular.one('getapply/'+ 46).get().then(function(response){
$scope.result = response.APPLIED_PROFILES;
})

Restangular.one('getapply/'+ 46).get().then(function(response){
$scope.result1 = response.JOB_DETAILS;
})

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





/*===============contacted starts===============*/
$scope.contact=function(){
  Restangular.all('contacted').post($scope.data).then(function(response){
  $scope.user1 = response;
      $scope.con= response.status;
      $scope.cont= response.error;
      if($scope.con == "CONTACTED"){
	alert("success")
}
else{
	alert("ALLREADY CONTACTED ")
}
})

}


}]);
