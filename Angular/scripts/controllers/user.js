'use strict';
/*
Client = Nombre de la Aplicación
IndexNoteCtrl = Nombre del Controlador
UserResource = Es el servicio de envío de datos
*/
angular.module('Client')
.controller('IndexUserCtrl', function() {})
.controller('CreateUserCtrl', function($scope,  UserResource)  {
  $scope.title = "Crear Usuario";
  $scope.button = "Guardar";
  $scope.Users = {};
  $scope.saveUser = function()  {
    console.log($scope.Users);
    UserResource.save($scope.Users);
  }
});
