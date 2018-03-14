app.controller('search',['$scope','Restangular',function($scope,Restangular){
$scope.data={
       "experiance":"",
       "skills":"",
       "location":""
    }

    Restangular.one('viewcity').get().then(function(response) {
                 $scope.citys= response;

    });
    Restangular.one('totaljobs').get().then(function(response) {
                 $scope.jobs= response;

    })


    $scope.search = function() {
        Restangular.all('getrelatedjobs').post($scope.data).then(function(response) {
            $scope.data1 = response;



        });

        Restangular.one('totalrelatedjobs').get().then(function(response) {
                     $scope.jobs= response;

        })



    }
    }]);
