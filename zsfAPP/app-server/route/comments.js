const express = require('express');
const pool = require("./pool");
const router = express.Router();

// router.get("/jiekou",(req,res)=>{
//     var uid=req.session.uid;
//     if(uid==""){
//         res.send({code:0,msg:"用户为空"})
//         return;
//     }
//     var neirong=req.query.neirong;
//     var pingfen=req.query.pingfen;
//     var lid=req.query.lid;
//     var shijian=req.query.shijian;
    
//     var sql="INSERT INTO comments values(null,?,?,?,?,?)";
//     pool.query(sql,[shijian,neirong,pingfen,lid,uid],(err,result)=>{
//         if(err)throw err
//         console.log(result);
//         if(result.affectedRows>0){
//             res.send({code:1,msg:"插入成功",data:result})
//         }else{
//             res.send({code:0,msg:"插入失败"})
//         }
//     })
// })

router.get("/showcom",(req,res)=>{
    var lid=req.query.lid;
    var sql="select * from comments where lid=?";
    pool.query(sql,[lid],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({code:1,msg:"查询成功",data:result});
        }else{
            res.send({code:-1,msg:"查询失败"});
        }
    })
})









module.exports = router;









