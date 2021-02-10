var jwt=require('jsonwebtoken');

var connection = require('./../config');

module.exports.authenticate = function(req,res){

    //console.log('hhh');

    console.log(req.body);
    // console.log(password);
    var user=req.body.UserName;
    
    var pass=req.body.Password;
    //var Password = 'ec4b90b5ab6a3c6d1e3ce12d07f8eda74b012ff4a2f575ab02567650647df880';
    console.log(user);    
    console.log(pass); 
    

   // connection.query('SELECT * FROM ab_users WHERE username = ?',[UserName], function (error, results, fields) {
    connection.query("select count(*) as count from ab_users where username='"+ user +"' and password='"+ pass +"';", function(err, data, fields){
      
   var user = [{
        'username':user,
        'password':pass
    }];

    if(err){
        console.log(err);
        res.end(JSON.stringify(err));
        res.end();
    }else{
        var message = '';
        console.log(data);
        if(data[0].count > 0){
            var flag = true;
            var token=jwt.sign({user},'kdcaSecurity');
            message="Login Successful";
            res.status(200).json({
                message,
                token,
                flag
            });
        }else{
            var flag = false;
            message = 'Username or Password Wrong.';
            res.status(200).json({
                message,
                flag
            });
        }//end if    
    }//end if
    
});//end Con.query
}