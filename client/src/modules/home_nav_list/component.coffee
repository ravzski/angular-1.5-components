Ctrl = ($scope, $element, $attrs)->
  ctrl = this

  ctrl.nav = [
    {
      label: "Works"
      link: "/works"
    }
    {
      label: "Resume"
      link: "/resume"
    }
    {
      label: "Contact"
      link: "/contact"
    }
  ]


Ctrl.$inject = ['$scope','$element','$attrs']

angular.module('client').component 'homeNav',
  templateUrl: 'modules/home_nav_list/index.html'
  controller: Ctrl
