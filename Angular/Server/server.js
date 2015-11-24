'use strict'
const mysql = require('mysql');
const app = require('express')
const bodyParser = require("body-parser");
const connection = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : 'root',
    database : 'LFG',
});

class Modelo {

app.get('/ideas', function(req, res)  {
  var data =  {
    "error":1,
    "ideas":""
  }
  connection.query("SELECT * from ideas", function(err, rows, fields) {
    if(rows.length != 0)  {
      data["error"] = 0;
      data["ideas"] = rows;
      res.json(data);
    } else {
        data["ideas"] = "No se encontraron ideas";
      }
    })
  })

  app.post('/ideas', function(req, res) {
    var nombre = req.body.nombre
    var descripcion = req.body.descripcion;

    if(nombre && descripcion) connection.query("INSERT INTO ideas VALUES('',?,?,'','','')", [nombre, descripcion])
  })

  app.put('/ideas', function(req, res)  {
    var id = req.body.id;
    var nombre = req.body.nombre;
    var descripcion = req.body.descripcion;

    if(!!id && !!nombre && !!descripcion) connection.query("UPDATE ideas SET nombre=?, descripcion=? WHERE id=?", [nombre, descripcion, id])
  })

  app.delete('/ideas', function(req, res) {
    var id = req.body.id;
    if(!!id) connection.query("DELETE FROM ideas WHERE id=?", [id])
  })

}



app.get('/users', function(req, res)  {
  var data =  {
    "error":1,
    "ideas":""
  }
  connection.query("SELECT * from users", function(err, rows, fields) {
    if(rows.length != 0)  {
      data["error"] = 0;
      data["users"] = rows;
      res.json(data);
    } else {
        data["users"] = "No se encontraron ideas";
      }
    })
  })

  app.post('/users', function(req, res) {
    var user = req.body.user
    var email = req.body.email;
    var password = req.body.password

    if(user && email && password) connection.query("INSERT INTO users VALUES('',?,'','','',?,?,'','','','','','','','','')", [user, email, password])
  })

  app.put('/users', function(req, res)  {
    var id = req.body.id;
    var nombre = req.body.nombre;
    var apellidoP = req.body.apellidoP;
    var apellidoM = req.body.apellidoM;
    var pais = req.body.pais;
    var estado = req.body.estado;
    var ciudad = req.body.ciudad;

    if(!!id && !!nombre && !!descripcion) connection.query("UPDATE users SET nombre=?, apellidoP=?, apellidoM=?, pais=?, estado=?, ciudad=? WHERE id=?", [nombre, apellidoP, apellidoM, pais, estado, ciudad, id])
  })

  app.delete('/users', function(req, res) {
    var id = req.body.id;
    if(!!id) connection.query("DELETE FROM users WHERE id=?", [id])
  })

}

app.get('/examenes', function(req, res)  {
  var data =  {
    "error":1,
    "ideas":""
  }
  connection.query("SELECT * from examenes", function(err, rows, fields) {
    if(rows.length != 0)  {
      data["error"] = 0;
      data["examenes"] = rows;
      res.json(data);
    } else {
        data["examenes"] = "No se encontraron ideas";
      }
    })
  })

  app.post('/examenes', function(req, res) {
    var pregunta = req.body.pregunta
    var respuesta = req.body.respuesta;

    if(nombre && descripcion) connection.query("INSERT INTO examenes VALUES('',?,?,'','','')", [pregunta, respuesta])
  })

  app.put('/examenes', function(req, res)  {
    var id = req.body.id;
    var pregunta = req.body.pregunta;
    var respuesta = req.body.respuesta;

    if(!!id && !!pregunta && !!respuesta) connection.query("UPDATE examenes SET pregunta=?, respuesta=? WHERE id=?", [pregunta, respuesta, id])
  })

  app.delete('/examenes', function(req, res) {
    var id = req.body.id;
    if(!!id) connection.query("DELETE FROM examenes WHERE id=?", [id])
  })

}


module.exports = Modelo
