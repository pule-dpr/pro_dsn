const express=require('express');
//导入连接池
const pool=require('../pool.js');
//创建路由器
const router=express.Router();
//添加演出路由
router.get('/show',(req,res)=>{
    var sql='select * from dsn_show';
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }
    })
})
//添加门票路由
router.get('/tickets',(req,res)=>{
    var sql='select * from dsn_tickets';
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }
    })
})
//添加根据tid检索门票详情路由
router.get('/tickets/:tid',(req,res)=>{
    var $tid=req.params.tid;
    var sql='select * from dsn_tickets_detail where tid=?';
    pool.query(sql,[$tid],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }
    })
})
//添加项目路由
router.get('/project',(req,res)=>{
    var sql='select * from dsn_project';
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }
    })
})
//添加演出详情根据sid检索路由
router.get('/show/:sid',(req,res)=>{
    var $sid=req.params.sid;
    var sql='select * from dsn_show where sid=?';
    pool.query(sql,[$sid],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }
    })
})
//添加根据pid检索项目详情路由
router.get('/project/:pid',(req,res)=>{
    var $pid=req.params.pid;
    var sql='select * from dsn_project where pid=?';
    pool.query(sql,[$pid],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }
    })
})
//添加商品登录路由
//添加商品删除路由
//添加商品修改路由
//添加商品列表路由
//添加商品邮箱检测路由
//添加检测手机路由
//检测商品名路由
//添加退出登录路由
//获取当前商品信息路由
//导出路由
module.exports=router;