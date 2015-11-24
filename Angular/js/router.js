'use strict';
/*
Client = Nombre de la Aplicación
IndexNoteCtrl = Nombre del Controlador
 */
angular.module('Dashboard', ['ngResource', 'ngRoute', 'ui.materialize'])
  .config(function($routeProvider)  {
    $routeProvider
    .when('/',   {
      templateUrl: 'views/main.html',
      controller: 'MainController'
    })
    .when('/dashboard',   {
      templateUrl: 'views/dashboard/main.html',
      controller: 'MainController'
    })

    .otherwise({
      redirectTo: '/dashboard'
    });
  });
