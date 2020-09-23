var express=require('express');
var router=express.Router();
var multer=require('multer');
var db = require('../db');


router.get('/', function(req, res, next) {

  var query = 'select * from file';
  db.query(query, function(err, rows, fields) {
    if (err) throw err;
   
    res.render('video', { file: rows});
  })
});


var storage=multer.diskStorage({
	destination:function(req,file,cb){
		cb(null,'uploads/')
	},
	filename:function(req,file,cb){
		cb(null,Date.now() + file.originalname)
	}
})


var upload =multer({storage:storage})

router.get('/create',function(req,res,next){
  res.render('create',{title:'Create Blog'});
});

 router.post('/upload',upload.single('blogimage'),function(req,res,next){
	var fileinfo =req.file.filename;
	var title =req.body.title;
	console.log(title);
	res.send(fileinfo);


/* router.post('/upload',upload.array('blogimage',6),function(req,res,next){
	var fileinfo =req.files;
	var title =req.body.title;
	console.log(title);
	res.send(fileinfo);
	*/


 var sql = `INSERT INTO file (file) VALUES ("${fileinfo}")`;
  db.query(sql, function(err, result) {
    if (err) throw err;
    console.log('file inserted');
    res.redirect('/blog');
  });
});



module.exports=router;