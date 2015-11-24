'use strict';
/*
Client = Nombre de nuestra aplicación
factory = el método por el cual envíamos el servicio
UserResource = Nombre de nuestro servicio
*/

angular.module('Dashboard')
  .factory('UsersResource', function($resource) {
    return $resource("http://localhost:8000/account/:id/", {
      id: "@id"
    }, {
      update: {
        method: "PUT"
      }
    });
  })
  .factory('mCategory', function($resource) {
    return $resource("http://localhost:8000/mCategory/:id/", {
      id: "@id"
    }, {
      update: {
        method: "PUT"
      }
    });
  })
  .factory('IdeasResource', function($resource) {
    return $resource("http://localhost:8000/ideas/:id", {
      id: "@id"
    }, {
      update: {
        method: "PUT"
      }
    });
  })
  .factory('EntradasResource', function($resource) {
    return $resource("http://localhost:8000/blog/:id", {
      id: "@id"
    }, {
      update: {
        method: "PUT"
      }
    });
  })
  .factory('PruebasResource', function($resource) {
    return $resource("http://localhost:8000/pruebas/:id", {
      id: "@id"
    }, {
      update: {
        method: "PUT"
      }
    });
  });
