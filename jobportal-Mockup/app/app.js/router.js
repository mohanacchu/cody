
app.config(['RestangularProvider', '$stateProvider', '$urlRouterProvider',  function(RestangularProvider, $stateProvider, $urlRouterProvider) {

RestangularProvider.setBaseUrl('http://localhost:9001/jobportal/services/rest/api/v1/');
    $urlRouterProvider.otherwise('home')

    $stateProvider
    .state('home',{
      url:"/home",
      templateUrl: "home.html"

    })
    .state('employerLogin',{
      url:"/employerLogin",
      templateUrl:"/employerLogin.html"
     /* controller:"loginController1"*/

    })

    .state('register',{
      url:"/register",
      templateUrl:"register.html"
     /* controller:"erController"*/

    })
    .state('employeeLogin',{
      url:"/employeeLogin",
      templateUrl:"employee-login.html"
      /*controller:"loginCtrl"*/
    })

    .state('Employeeregister',{
      url:"/Employeeregister",
      templateUrl:"signup.html"
    /*  controller:"MyController"*/

    })

        .state('dashbord',{
        url:"/dashbord",
            templateUrl:"dashbord.html"
        })


        .state('dashbord.profile', {
            url: "profile",
            templateUrl: "profile.html"
           /* controller:"myController"*/




        })
        .state('dashbord.editprofile', {
            url: "/editprofile",
            templateUrl: "editprofile.html"
            /*controller:""*/




        })
        .state('dashbord.searchJob', {
            url: "/searchJob",
            templateUrl: "search-jobs.html"
            /*controller:"search"*/



        })
            .state('dashbord.latestJob', {
                url: "/latestJob",
                templateUrl: "latest-jobs.html"
               /* controller:"hey"*/



            })



            .state('dashbord.changePsw', {
                url: "/changePsw",
                templateUrl: "change-password.html"
               /* controller:"pswctrl"*/


            })
            .state('dashbord.SavedJobs', {
                url: "/SavedJobs",
                templateUrl: "savejobs.html"
                /*controller:"savejob"*/


            })

            .state('dashbord.applydJobs', {
                url: "/applydJobs",
                templateUrl: "applyjobs.html"
                /*controller:"applyJob"*/


            })

    .state('session',{
        url:"/session",
        templateUrl:"session.html"
    })


       .state('session.postjob', {
        url: "/postjob",
        templateUrl: "post-job.html"
        /*controller:"jobCtrl"*/
		  })
    .state('session.changepassword',{
      url:"/changepassword",
      templateUrl: "change-password.html"
      /*controller:"pswCtrl"*/
    })

    .state('session.dashboard',{
      url:"/dashboard",
      templateUrl: "dashboard.html"
       /* controller:"aaa"*/
     })
    .state('session.employeeprofile',{
      url:"/employeeprofile",
      templateUrl: "employeeprofile.html"
       /*controller:"profile"*/
    })
    .state('session.myprofile',{
      url:"/myprofile",
      templateUrl: "myprofile.html"
       /*controller:"myprofilectrl"*/
    })
    .state('session.shortlisted',{
      url:"/shortlisted",
      templateUrl: "shortlisted.html"
       /*controller:"list"*/
    })
    .state('session.notyfied',{
      url:"/notyfied",
      templateUrl: "notyfied.html"
     /*  controller:"notify"*/
    })
    .state('session.applied',{
      url:"/applied",
      templateUrl: "applied.html"
      /* controller:"apply"*/
    })
    .state('session.closed',{
      url:"/closed",
      templateUrl: "closed.html"
       /*controller:"closed"*/
    })
    .state('session.inbox',{
      url:"/inbox",
      templateUrl: "inbox.html"
       /*controller:"abc"*/
    })
    .state('session.contacted',{
      url:"/contacted",
      templateUrl: "contacted.html"
       /*controller:"contact"*/
    })
    
    .state('session.editjob', {
        url: "/editjob",
        templateUrl: "editjob.html"
        /*controller:"editjob"*/
       
		  })

}]);
