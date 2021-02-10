var express=require("express");

const cors = require('cors');

var bodyParser=require('body-parser');

var jwt= require("jsonwebtoken");

var app = express();

var router=express.Router();

var http=require('http');

var path = require('path');






app.use(bodyParser.urlencoded({ extended: true }));

app.use(bodyParser.urlencoded({ limit: '50mb' }));
app.use(bodyParser.json({limit:'50mb'}));

app.all('*', function(req, res, next) {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
    res.header('Access-Control-Allow-Headers', "Origin, X-Requested-With, Content-Type, Accept, authentication-token, application/json, charset=utf-8");
    if ('OPTIONS' == req.method) {
    res.sendStatus(200);
    } else {
      next();
    }
});


var leaduserlistController  = require('./leadmanagement/leaduserlist-controller.js');

process.env.SECRET_KEY="thisismysecretkey";




app.post('/api/leaduserlist',leaduserlistController.leaduserlist);


app.use('/secure-api',router);
// validation middleware
router.use(function(req,res,next){
    var token=req.body.token || req.headers['token'];
    if(token){
        jwt.verify(token,process.env.SECRET_KEY,function(err,ress){
            if(err){
                res.status(500).send('Token Invalid');
            }else{
                next();
            }
        })
    }else{
        res.send('Please send a token')
    }
})
router.get('/home',function(req,res){
    res.send('Token Verified')
})
app.listen(3000);
