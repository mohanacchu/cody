
app.controller('list', ['$scope','Restangular', function($scope,Restangular) {
    $scope.data={
    "candid":67, 
    "empid":46 
}
    
    
Restangular.one('getshortlisted/'+46).get().then(function(response){
$scope.result2 = response.SHORTLISTED_PROFILES;
})




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
    
    Restangular.one('totaljobsposted/' +46).get().then(function(response){
 $scope.result2 = response;
 })
}]);
