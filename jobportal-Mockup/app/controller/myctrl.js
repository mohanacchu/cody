app.controller('myController', ['$scope','Restangular', function($scope,Restangular,fileReader) {
  $scope.dataa = {

    "full_name":"",
    "experience":"",
    "email":"",
    "graduation":"",
    "primary_skills":"",
    "secondary_skills":"",
    "number":"",
    "status":"",
    "gender":"",
    "current_location":"",
    "prefered_location":""

}
$scope.data = {

  "image":""
}

console.log($scope.dataa);

console.log($scope.data)
Restangular.one('viewgender').get().then(function(response) {
             $scope.genders= response;

});

Restangular.one('viewcity').get().then(function(response) {
             $scope.citys= response;

});
Restangular.one('totaljobs').get().then(function(response) {
             $scope.jobs= response;

})
Restangular.one('viewskills').get().then(function(response) {
             $scope.skillss= response.skill;

});
$scope.submit=function(){
          Restangular.all('uploadimage').post($scope.data).then(function(response){
          $scope.user = response;
          })

        }


$scope.update = function() {
    Restangular.all('userprofiles').post($scope.dataa).then(function(response) {
        $scope.user1 = response;
        if (response.status == "PROFILE CREATED SUCCESSFULLY") {
            alert("success");

        } else {
            alert("failure");

        }


    });

}
}]);
