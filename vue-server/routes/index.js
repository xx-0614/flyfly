const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get('/',(req,res)=>{
    var output={
        carousel:[],
        city:[],
        activity:[],
        microfilm:[],
        travel:[],
        love_times:[],
        comment:[]
    }
    pool.query("SELECT * FROM fly_index_carousel",(err,result)=>{
        if(err) throw err;
        output.carousel=result;
        pool.query("SELECT * FROM fly_index_city",(err,result)=>{
            if(err) throw err;
            output.city=result;
            pool.query("SELECT * FROM fly_week_year",(err,result)=>{
                if(err) throw err;
                output.activity=result;
                pool.query("SELECT * FROM fly_microfilm",(err,result)=>{
                    if(err) throw err;
                    output.microfilm=result;
                    pool.query("SELECT * FROM fly_city_style",(err,result)=>{
                        if(err) throw err;
                        output.travel=result;
                        pool.query("SELECT * FROM fly_city_people",(err,result)=>{
                            if(err) throw err;
                            output.love_times=result;
                            pool.query("SELECT * FROM fly_comment",(err,result)=>{
                                if(err) throw err;
                                output.comment=result;
                                res.send(output)
                            })
                        })
                    })
                })
            })
        })
    });
})
module.exports=router;