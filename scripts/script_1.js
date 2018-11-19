/// <reference path="angular.min.js" />
/// <reference path="angular-route.min.js" />

var myapp = angular.module("myModule", ["ngRoute"])
    .config(function ($routeProvider, $locationProvider) {
        $routeProvider.caseInsensitiveMatch = true;

        $routeProvider
            .when("/blockA", {
                templateUrl: "Templates/Block_A.aspx",
                controller: "myController"
            })
            .when("/blockB", {
                templateUrl: "Templates/Block_B.aspx",
                controller: "myController"
            })
            .when("/blockC", {
                templateUrl: "Templates/Block_C.aspx",
                controller: "myController"
            })
            .when("/blockD", {
                templateUrl: "Templates/Block_D.aspx",
                controller: "myController"
            })
            .when("/Search/:Full_Name", { 
                templateUrl: "Templates/Search.aspx",
                controller: "SearchController"
            })
            .when("/home", {
                controller: "myController1",
                templateUrl: 'Home.aspx'
            })
            .when("/blog", {
                controller: "myController2",
                templateUrl: 'Blog.aspx'
            })
            .when("/about", {
                controller: "myController3",
                templateUrl: 'About.aspx'
            })
            .when("/contact", {
                controller: "myController4",
                templateUrl: 'Contact.aspx'
            })
            .when("/complain", {
                controller: "myController5",
                templateUrl: 'Complain.aspx'
            })
            .when("/bill", {
                controller: "myController6",
                templateUrl: 'Bill_Account.aspx'
            })
            .when("/display", {
                controller: "myController7",
                templateUrl: 'Display_queries.aspx'
            })
            .when("/up", {
                controller: "myController8",
                templateUrl: 'Signup.aspx'
            })
            .otherwise({
                redirectTo: "/blockA"
            });

        $locationProvider.html5Mode(true);
    })
    .controller("myController", function ($scope, $http,$location) {
        $scope.message = "Angular Js";

        var arr = [
            {
                flat: "UK",
                inner: [
                    { flat: "A-101" },
                    { flat: "A-102" },
                    { flat: "A-103" },
                    { flat: "A-104" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "A-201" },
                    { flat: "A-202" },
                    { flat: "A-203" },
                    { flat: "A-204" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "A-301" },
                    { flat: "A-302" },
                    { flat: "A-303" },
                    { flat: "A-304" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "A-401" },
                    { flat: "A-402" },
                    { flat: "A-403" },
                    { flat: "A-404" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "A-501" },
                    { flat: "A-502" },
                    { flat: "A-503" },
                    { flat: "A-504" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "A-601" },
                    { flat: "A-602" },
                    { flat: "A-603" },
                    { flat: "A-604" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "A-701" },
                    { flat: "A-702" },
                    { flat: "A-703" },
                    { flat: "A-704" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "A-801" },
                    { flat: "A-802" },
                    { flat: "A-803" },
                    { flat: "A-804" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "A-901" },
                    { flat: "A-902" },
                    { flat: "A-903" },
                    { flat: "A-904" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "A-1001" },
                    { flat: "A-1002" },
                    { flat: "A-1003" },
                    { flat: "A-1004" }]
            }
        ];

        $scope.arr = arr;

        var arr1 = [
            {
                flat: "UK",
                inner: [
                    { flat: "B-101" },
                    { flat: "B-102" },
                    { flat: "B-103" },
                    { flat: "B-104" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "B-201" },
                    { flat: "B-202" },
                    { flat: "B-203" },
                    { flat: "B-204" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "B-301" },
                    { flat: "B-302" },
                    { flat: "B-303" },
                    { flat: "B-304" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "B-401" },
                    { flat: "B-402" },
                    { flat: "B-403" },
                    { flat: "B-404" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "B-501" },
                    { flat: "B-502" },
                    { flat: "B-503" },
                    { flat: "B-504" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "B-601" },
                    { flat: "B-602" },
                    { flat: "B-603" },
                    { flat: "B-604" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "B-701" },
                    { flat: "B-702" },
                    { flat: "B-703" },
                    { flat: "B-704" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "B-801" },
                    { flat: "B-802" },
                    { flat: "B-803" },
                    { flat: "B-804" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "B-901" },
                    { flat: "B-902" },
                    { flat: "B-903" },
                    { flat: "B-904" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "B-1001" },
                    { flat: "B-1002" },
                    { flat: "B-1003" },
                    { flat: "B-1004" }]
            }
        ];

        $scope.arr1 = arr1;

        var arr2 = [
            {
                flat: "UK",
                inner: [
                    { flat: "C-101" },
                    { flat: "C-102" },
                    { flat: "C-103" },
                    { flat: "C-104" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "C-201" },
                    { flat: "C-202" },
                    { flat: "C-203" },
                    { flat: "C-204" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "C-301" },
                    { flat: "C-302" },
                    { flat: "C-303" },
                    { flat: "C-304" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "C-401" },
                    { flat: "C-402" },
                    { flat: "C-403" },
                    { flat: "C-404" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "C-501" },
                    { flat: "C-502" },
                    { flat: "C-503" },
                    { flat: "C-504" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "C-601" },
                    { flat: "C-602" },
                    { flat: "C-603" },
                    { flat: "C-604" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "C-701" },
                    { flat: "C-702" },
                    { flat: "C-703" },
                    { flat: "C-704" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "C-801" },
                    { flat: "C-802" },
                    { flat: "C-803" },
                    { flat: "C-804" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "C-901" },
                    { flat: "C-902" },
                    { flat: "C-903" },
                    { flat: "C-904" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "C-1001" },
                    { flat: "C-1002" },
                    { flat: "C-1003" },
                    { flat: "C-1004" }]
            }
        ];

        $scope.arr2 = arr2;

        var arr3 = [
            {
                flat: "UK",
                inner: [
                    { flat: "D-101" },
                    { flat: "D-102" },
                    { flat: "D-103" },
                    { flat: "D-104" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "D-201" },
                    { flat: "D-202" },
                    { flat: "D-203" },
                    { flat: "D-204" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "D-301" },
                    { flat: "D-302" },
                    { flat: "D-303" },
                    { flat: "D-304" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "D-401" },
                    { flat: "D-402" },
                    { flat: "D-403" },
                    { flat: "D-404" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "D-501" },
                    { flat: "D-502" },
                    { flat: "D-503" },
                    { flat: "D-504" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "D-601" },
                    { flat: "D-602" },
                    { flat: "D-603" },
                    { flat: "D-604" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "D-701" },
                    { flat: "D-702" },
                    { flat: "D-703" },
                    { flat: "D-704" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "D-801" },
                    { flat: "D-802" },
                    { flat: "D-803" },
                    { flat: "D-804" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "D-901" },
                    { flat: "D-902" },
                    { flat: "D-903" },
                    { flat: "D-904" }]
            },
            {
                flat: "UK",
                inner: [
                    { flat: "D-1001" },
                    { flat: "D-1002" },
                    { flat: "D-1003" },
                    { flat: "D-1004" }]
            }
        ];

        $scope.arr3 = arr3;

        $scope.display = function (Flat_No) {
            $http({
                url: "MemberDetails.asmx/GetData",
                params: { Flat_No: Flat_No },
                method: "get"
            }).then(function (response) {
                $scope.member = response.data;
            });

        }
        $scope.Full_Name = "";

        $scope.searchMember = function () {
           
                $location.url("/Search/" + $scope.Full_Name);
            
        }
        
    })
    .controller("myController1", function ($window) {
        $window.location.href = 'http://localhost:57735/Home.aspx';
    })
    .controller("myController2", function ($window) {
        $window.location.href = 'http://localhost:57735/Blog.aspx';
    })
    .controller("myController3", function ($window) {
        $window.location.href = 'http://localhost:57735/About.aspx';
    })
    .controller("myController4", function ($window) {
        $window.location.href = 'http://localhost:57735/Contact.aspx';
    })
    .controller("myController5", function ($window) {
        $window.location.href = 'http://localhost:57735/Complain.aspx';
    })
    .controller("myController6", function ($window) {
        $window.location.href = 'http://localhost:57735/Bill_Account.aspx';
    })
    .controller("myController7", function ($window) {
        $window.location.href = 'http://localhost:57735/Display_queries.aspx';
    })
    .controller("myController8", function ($window) {
        $window.location.href = 'http://localhost:57735/Signup.aspx';
    })
    .controller("SearchController", function ($scope, $http, $routeParams) {
        if ($routeParams.Full_Name) {
            $http({
                url: "MemberDetails.asmx/GetMemberByName",
                params: { Full_Name: $routeParams.Full_Name },
                method: "get"
            }).then(function (response) {
                $scope.member = response.data;
            });
        }
       
    })



