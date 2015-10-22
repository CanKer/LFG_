'use strict';
/*
Client = Nombre de la Aplicación
IndexNoteCtrl = Nombre del Controlador
 */
angular.module('Client', ['ngResource', 'ngRoute'])
  .config(function($routeProvider)  {
    $routeProvider
    .when('/users',   {
      templateUrl: 'views/user/index.html',
      controller: 'IndexUserCtrl'
    })
    .when('/users/create',   {
      templateUrl: 'views/user/create.html',
      controller: 'CreateUserCtrl'
    })
    .otherwise({
      redirectTo: '/'
    });
  });
