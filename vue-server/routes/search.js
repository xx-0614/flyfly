const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get('/',(req,res)=>{
    var kwd=req.query.kwd;
    pool.query("SELECT title,dates FROM fly_comment where title like ?",[`%${kwd}%`],(err,result)=>{
        if(err) throw err;            
             res.send(result)
            })
    })
module.exports=router;