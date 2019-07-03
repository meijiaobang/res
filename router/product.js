var express=require("express");
var pool=require("../pool.js");
let router=express.Router();
router.get("/product",(req,res)=>{
	var sql="SELECT * FROM wy_new_product";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.json(result);
		//console.log("商品列表");
	})
});
module.exports=router;