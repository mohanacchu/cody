app.controller('MyController', ['$scope','$state', 'Restangular', function($scope,$state, Restangular) {
    $scope.data = {
        "name": "",
        "location": "",
        "phone": "",
        "gender":"",
        "email": "",
        "password": "",
		"password_Repeat":""



    }

    Restangular.one('viewgender').get().then(function(response) {
                 $scope.genders= response;
               });


               Restangular.one('viewcity').get().then(function(response) {
                            $scope.citys= response;

               });


    $scope.signup = function() {
        Restangular.all('userreg').post($scope.data).then(function(response) {
            $scope.data1 = response;

            if (response.status == "SUCCESSFULLY REGISTERED") {
                  $state.go("employeeLogin")
            } else {
                alert("failure");
            }


        });

    }
}]);
