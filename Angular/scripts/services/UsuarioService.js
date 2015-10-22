'use strict';
/*
Client = Nombre de nuestra aplicación
factory = el método por el cual envíamos el servicio
UserResource = Nombre de nuestro servicio
*/
angular.module('Client')
  .factory('UserResource', function($resource)  {
    return $resource("http://localhost:8000/account/:id", {id: "@id"});
  });
