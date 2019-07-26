const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get('/',(req,res)=>{
    var pid=req.query.pid;
    var output={
    pic:[],
    txt:[],
  }
  if(pid!==undefined){
    var sql1=`select * from fly_details_img where pid=?`;
    pool.query(sql1,[pid],(err,result)=>{
      if(err) throw err;
      output.pic=result;
      var tid=pid;
      var sql2=`select * from fly_details_text where tid=?`;
      pool.query(sql2,[tid],(err,result)=>{
        if(err) throw err;
        output.txt=result;
        res.send(output);
      })
    })
  }else{
    res.send(output);
  }
})
module.exports=router;