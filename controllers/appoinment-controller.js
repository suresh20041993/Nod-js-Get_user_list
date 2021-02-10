//var Cryptr = require('cryptr');
//var express=require("express");
var connection = require('./../config');
// cryptr = new Cryptr('myTotalySecretKey');
 
exports.appoinment=function(req,res){

        console.log(req.body);
        var PatientsName=req.body.PatientsName;
        var email=req.body.email;
        var PhoneNumber=req.body.PhoneNumber;
        var gender=req.body.gender;
        var specialization=req.body.specialization;
        var messages=req.body.messages;
	var appoinmentdate=req.body.appoinmentdate;

    var today = new Date();
  // var today = "";
  //var encryptedString = cryptr.encrypt(req.body.password);
    var appoinmentDetails={
        "PatientsName": PatientsName,
        "email": email,
        "PhoneNumber": PhoneNumber,
        "gender": gender,
        "specialization":specialization,
        "message":messages,
	"appoinmentdate":appoinmentdate,
        //"password":encryptedString,
        "entryDate":today
        //"updated_at":today
    }


    console.log(appoinmentDetails.appoinmentdate);
    //var sql = 'INSERT INTO appoinmentDetails(PatientsName, email, PhoneNumber, gender, specialization, messages, entryDate)values("'+appoinmentDetails.PatientsName+'","'+appoinmentDetails.email+'","'+appoinmentDetails.PhoneNumber+'","'+appoinmentDetails.gender+'","'+appoinmentDetails.specialization+'","'+appoinmentDetails.messages+'","'+appoinmentDetails.entryDate+'"';
    //connection.query('INSERT INTO appoinmentDetails(PatientsName, email, PhoneNumber, gender, specialization, messages, entryDate)values("'+appoinmentDetails.PatientsName+'","'+appoinmentDetails.email+'","'+appoinmentDetails.PhoneNumber+'","'+appoinmentDetails.gender+'","'+appoinmentDetails.specialization+'","'+appoinmentDetails.messages+'","'+appoinmentDetails.entryDate+'"', function (error, results, fields) {
        //connection.query(sql, function (error, result) {
            // console.log(sql);
            connection.query('INSERT INTO appoinmentDetails SET ?',appoinmentDetails, function (error, results, fields) {
                if (error) {
                  console.log("error ocurred",error);
                  res.send({
                    "code":400,
                    "message":"error ocurred"
                  })
                }else{
                  console.log('The solution is: ', results);
                  res.send({
                    "code":200,
                    "message":"Your Appoinment sucessfully"
                      });
                }
                });
              }

  
              // cryptr = new Cryptr('myTotalySecretKey');
               
        
        
        exports.appoinmentlist=function(req,res){
            console.log('test');
          connection.query('SELECT * FROM appoinmentDetails', function (error, results, fields) {
		console.log(results);
            if (error) {
              console.log("error ocurred",error);
              res.send({
                "code":400,
                "message":"error ocurred"
              })
            }else{
              console.log('The solution is: ', results);
              res.send({
                "code":200,
                "message":"Get list of appoinment list"
                  });
            }
            });

              }
