const express=require("express");
var pool=require('../pool.js');
let router=express.Router();


router.get('/register',(req,res)=>{
	var u=req.query.uid;
	var s=req.query.uname;
	var p=req.query.upwd;
	var sql="INSERT INTO wy_user(uid,uname,upwd) VALUES(?,?,?)";
	pool.query(sql,[u,s,p],(err,result)=>{
		if(err) throw err;
		if(result.affectedRow==0){
			res.json({code:-1,msg:"注册失败"});
			
		}else{
			res.json({code:1,msg:"注册成功",name:u});
		}
	})
});
module.exports=router;


/*
var sql="INSERT INTO wy_user (uid,uname,upwd) VALUES(?,?,?)";
'/register'
affectedRow
*/


