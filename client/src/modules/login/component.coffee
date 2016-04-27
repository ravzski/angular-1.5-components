Ctrl =($scope,Session)->

  ctrl = this

  ctrl.$onInit = ->
    ctrl.email = 'test@zz.com'

  ctrl.submit =(form)->
    form.$submitted = true
    if form.$valid
      debugger

  return

Ctrl.$inject = ['$scope','Session']

angular.module('client').component 'loginForm',
  templateUrl: 'modules/login/login_form.html'
  controller: Ctrl
