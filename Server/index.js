'use strict'
const express = require('express')();
const http = require('http').Server(app);
const mysql = require('mysql');
const bodyParser = require("body-parser");
const model = require('./server')
const connection = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : 'root',
    database : 'LFG',
});
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

http.listen(8080, function(){
console.log("Connected & Listen to port 8080");
});
