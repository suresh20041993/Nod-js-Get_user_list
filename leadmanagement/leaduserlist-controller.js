
var connection = require('../config');

var nodemailer = require('nodemailer');
 
exports.leaduserlist=function(req,res){

        var sql = "select id,name,email,dob,address from User order by asc limit 0 ,2,000,000";
        connection.query(sql, function (err, result) {
            if (err) {
                      console.log("error ocurred",err);
                      res.send({
                        "code":400,
                        "message":"error ocurred"
                      })
                    }else{
                      console.log('The solution is: ', result);
                      res.send({
                        "code":200,
                        "message":"Lead Created sucessfully"
                          });
                    }
     });
}

            
      

              
