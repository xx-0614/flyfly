const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get('/',(req,res)=>{
    var pid=req.query.pid;
    var output={
    pic:[],
    txt:[],
    details:[]
  }
  if(pid!==undefined){
    var sql1=`select * from fly_details_img where pid=?`;
    pool.query(sql1,[pid],(err,result)=>{
      if(err) throw err;
      output.pic=result;
      var photo_id=pid;
      var sql2=`select * from fly_details_text where photo_id=?`;
      pool.query(sql2,[photo_id],(err,result)=>{
        if(err) throw err;
        output.txt=result;
        var text_id=pid;
        var sql3=`select details from fly_details_text_content where text_id=?`;
        pool.query(sql3,[text_id],(err,result)=>{
          output.details=result;
          res.send(output);
        })
      })
    })
  }else{
    res.send(output);
  }
})
module.exports=router;