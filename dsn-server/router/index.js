const express=require("express");
var router=express.Router();
var pool=require("../pool");
//添加热门路由
router.get("/",(req,res)=>{
  console.log(666);
  var sql="SELECT * FROM `dsn_remen`";
  pool.query(sql,[],(err,result)=>{
    // res.writeHead(200,{
    //   "Access-Control-Allow-Origin":"*"
    // });
    // res.write(JSON.stringify(result));
    // res.end();//发送
    res.send(result);
  })
})
//添加首页轮播路由

module.exports=router;
//http://localhost:3000/index