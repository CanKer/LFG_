 (function() {
   "use strict";

   var app = angular.module('Dashboard')

   .factory('UserResource', function($resource) {
     return $resource("http://localhost:8000/ideas/:id", {
       id: "@id"
     }, {
       update: {
         method: "PUT"
       }
     });
   })



   .controller('MainController', function($scope, UserResource, $location) {
     $scope.name = "CanKer";

     $scope.Ideas = UserResource.query();

     $scope.categorias = ['Users', 'Ideas', 'Entradas', 'Conocimientos', 'Grupos'];
     $scope.currentCategory = "Ideas";
     $scope.setCurrentCategory = function(category) {
       $scope.currentCategory = category;
     }
     $scope.isCurrentCategory = function(category) {
       return $scope.currentCategory === category;
     }

     $scope.save = function(Ideas) {
       var guardarIdea = new UserResource();

       guardarIdea.nombre = Ideas.nombre;
       guardarIdea.descripcion = Ideas.descripcion;

       guardarIdea.$save(function(response) {
         $scope.Ideas.push(guardarIdea);
       });

     }







   });


 })();






 /*
 .controller('CreateController', function($scope, UserResource, $location, $timeout) {

   $scope.User = {};

   $scope.saveUser = function() {
     console.log($scope.Users);
     UserResource.save($scope.User);
     Materialize.toast('Usuario registrado', 5000, 'green accent-4')
   }

 })
 .controller('EditController', function($scope, UserResource, $location, $timeout, $routeParams) {
   $scope.User = UserResource.get({
     id: $routeParams.id
   });

   console.log($routeParams.id);


   $scope.saveUser = function() {
     console.log("hola2");

     console.log($scope.UsersE);
     UserResource.update($scope.Users);
     Materialize.toast('Usuario editado', 5000, 'green accent-4')
   };

 });  */


 // console.log(app);


 /* $scope.bookmarks = [
         {id:1,name:'Quizzpot.com',url:'https://quizzpot.com',category:'JavaScript'},
         {id:2,name:'Html5 Game Devs',url:'https://html5gamedevs.com',category:'Games'},
         {id:3,name:'CSS Tricks',url:'http://css-tricks.com',category:'CSS'},
         {id:4,name:'Bootstrap',url:'http://getbootstrap.com',category:'CSS'},
         {id:5,name:'Card',url:'http://jessepollak.github.io/card/',category:'JavaScript'}
     ];  */
