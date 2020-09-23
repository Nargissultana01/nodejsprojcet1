var express = require('express');
var router = express.Router();
var db = require('../db');

router.get('/', function(req, res, next) {

  var query = 'select * from node';
  db.query(query, function(err, rows, fields) {
    if (err) throw err;
   

     res.render('table', { node: rows});
  })
});

router.get('/create-form', function(req, res, next) {
  res.render('createform', {title: 'Form'});
});


router.post('/create', function(req, res, next) {
  var name = req.body.name;
  var mobile_no = req.body.mobile_no;
  var email = req.body.email;
  var age = req.body.age;
  var address = req.body.address;

  var sql = `INSERT INTO node (name, mobile_no,email,age,address) VALUES ("${name}", "${mobile_no}", "${email}","${age}","${address}" )`;
  db.query(sql, function(err, result) {
    if (err) throw err;
    console.log('record inserted');
    res.redirect('/bio');
  });
});

router.get('/edit-form/:id', function(req, res, next) {
  var id =req.params.id;
  var sql =`SELECT * FROM node WHERE id=${id}`;
  db.query(sql, function(err, rows, fields) {
      res.render('editform', {title: 'Update Product', node: rows[0]});
  });
});


router.post('/edit/:id', function(req, res, next) {
  var name = req.body.name;
  var mobile_no = req.body.mobile_no;
  var email = req.body.email;
  var age = req.body.age;
  var address = req.body.address;

  var id=req.params.id;

  var sql = `UPDATE node SET name="${name}",mobile_no="${mobile_no}",email="${email}",age="${age}",address="${address}" WHERE id=${id}`;
  db.query(sql, function(err, result) {
    if (err) throw err;
    res.redirect('/bio');
  });
});



module.exports = router;