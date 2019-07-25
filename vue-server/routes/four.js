const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get('/',(req,res)=>{
    
    pool.query("SELECT * FROM fly_city_people",(err,result)=>{
        if(err) throw err;            
             res.send(result)
            })
    })
module.exports=router;