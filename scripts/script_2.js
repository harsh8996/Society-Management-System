/// <reference path="angular.min.js" />

var app = angular.module("myModule", [])
    .controller("myController", function ($scope,$http) {
        var news = $http({
            url: "MemberDetails.asmx/GetNews",
            method: "get"
        }).then(function (response) {
            $scope.news = response.data;
        });
        $scope.news = news;
    })