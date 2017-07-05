(function() {
  'use strict';

  angular.module('app')
      .config(AppConfig);

  AppConfig.$inject = [
      '$stateProvider',
      '$urlRouterProvider',
      '$locationProvider'
  ];

  function AppConfig($stateProvider, $urlRouterProvider, $locationProvider) {
    $urlRouterProvider.otherwise("/test");
    $locationProvider.html5Mode(false);
    $locationProvider.hashPrefix('');

    $stateProvider
      .state('test', {
          url: '/test',
          templateUrl: "js/test.html",
          controller: "TestController as vm"
      });
  }
})();
