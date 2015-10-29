'use strict';
/*
Client = Nombre de la Aplicación
IndexNoteCtrl = Nombre del Controlador
 */
angular.module('Dashboard', ['ngResource', 'ngRoute', 'ui.materialize'])
  .config(function($routeProvider)  {
    $routeProvider
    .when('/dashboard',   {
      templateUrl: 'views/main.html',
      controller: 'MainController'
    })
    .when('/dashboard/Ideas',   {
      templateUrl: 'views/main.html',
      controller: 'MainController'
    })
    /*
    .when('/dashboard/create/:id',   {
      templateUrl: 'views/create.html',
      controller: 'EditController'
    }) */
    .otherwise({
      redirectTo: '/'
    });
  });
