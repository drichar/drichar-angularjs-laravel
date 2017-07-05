(function() {
  'use strict';

  angular.module('app')
    .controller('TestController', TestController);

  TestController.$inject = ['$http'];

  function TestController($http) {
    var vm = this;
    vm.test = "";

    activate();

    function activate() {
      $http.get('/api/test').then(function(result) {
        vm.test = result.data;
      });
    }
  }
})();
