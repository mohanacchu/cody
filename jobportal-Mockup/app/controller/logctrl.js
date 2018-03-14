app.controller('loginCtrl', ['$scope', 'Restangular', '$rootScope','$state', function($scope, Restangular, $rootScope,$state) {
    $scope.data = {
        "email":"",
        "password":""
    };
    $scope.signin = function() {
        Restangular.all('jobseekerlogin').post($scope.data).then(function(response) {
            $scope.data1 = response;



            $rootScope.loginid = [];
 angular.forEach( $scope.result, function(login) {
 $rootScope.loginid.push(login.empprofileid);
 });

            if (response.STATUS == "LOGIN SUCCESSFULL") {
              $state.go("dashbord.profile")

            } else {
                alert("failure");
            }
        });

    }
}]);
