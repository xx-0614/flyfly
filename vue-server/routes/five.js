const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get('/',(req,res)=>{
    
    pool.query("SELECT * FROM fly_six_year",(err,result)=>{
        if(err) throw err;            
             console.log(result);
             res.send(result)
            })
    })
module.exports=router;