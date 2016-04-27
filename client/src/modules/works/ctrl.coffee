Ctrl = ($scope,$state,$window)->

  $scope.projHeight = {'height':"#{$window.innerHeight*.70}px"}
  $scope.current = 'all'
  $scope.projects = angular.copy PROJECTS

  $scope.filter =(state)->
    $scope.current = state
    if state == 'all'
      $scope.projects = angular.copy PROJECTS
    else
      $scope.projects = []
      for obj in PROJECTS
        $scope.projects.push obj if obj.category == state

Ctrl.$inject = ['$scope','$state','$window']
angular.module('client').controller('WorksCtrl', Ctrl)
