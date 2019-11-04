// 商城-导航按钮-列表页
const express = require('express');
const pool = require("./pool");
const router = express.Router();
router.get("/",(req,res)=>{
    //接收商城按钮传过来的导航按钮id，来查询相对应的数据
    var sql="SELECT * FROM reduction";
    pool.query(sql,[],(err,result)=>{
        console.log(result);
        if(err) throw err;
        if(result.length >0){
            res.send({code:1,msg:"查询成功",data:result})
        }
    })

})

router.get("/queryOne",(req,res)=>{
    var lid=req.query.lid;
    console.log(lid);
    //接收商城按钮传过来的导航按钮id，来查询相对应的数据
    var sql="SELECT * FROM reduction where Tid=?";
    pool.query(sql,[lid],(err,result)=>{
        console.log(result);
        if(err) throw err;
        if(result.length >0){
            res.send({code:1,msg:"查询成功",data:result})
        }
    })
})

router.get("/queryOneimg",(req,res)=>{
    var lid=req.query.lid;
    console.log(lid);
    //接收商城按钮传过来的导航按钮id，来查询相对应的数据
    var sql="SELECT * FROM reduction_img where Tid=?";
    pool.query(sql,[lid],(err,result)=>{
        console.log(result);
        if(err) throw err;
        if(result.length >0){
            res.send({code:1,msg:"查询成功",data:result})
        }
    })
})

module.exports = router;