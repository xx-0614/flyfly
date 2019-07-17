<template>
    <div class="threetab3-content">
        
        <ul class="threetab3-ul" @click="open">
           <li class="threetab3-li">
              <a id="d1" href="javascript:;" class="active">1</a>
           </li>
           <li class="threetab3-li">
              <a id="d2" href="javascript:;">2</a>
           </li>
           <li class="threetab3-li">
              <a id="d3" href="javascript:;">3</a>
           </li>
           <li class="threetab3-li">
              <a id="d4" href="javascript:;">4</a>
           </li>
           <li class="threetab3-li">
              <a href="#">5</a>
           </li>
           <li class="threetab3-li">
              <a href="#">6</a>
           </li>
        </ul>
    </div>
</template>
<script>
export default {
   
    data(){
        return{}
    },
    methods: {
       open(e){
            var ds=document.querySelectorAll(".threetab3-content>div div");
            var as=document.querySelectorAll(".threetab3-content>ul>li a");
            console.log(ds)
            if(e.target.nodeName=="A"){
                for(var aa of as){
                    if(aa.className==""){
                        e.target.className="active"
                        for(var dd of ds){
                            if(dd.id==e.target.id){
                                dd.className=""
                            }else{
                                dd.className="none"
                            }
                        }
                    }else{
                        aa.className="";
                        e.target.className="active"
                    }
                }
            }
        }
    },
}
</script>
<style scoped>
   .threetab3-content{
       margin-top:120px;
   }
   .threetab3-ul{
       list-style:none;
       width:348px;
       height:30px;
       margin:0 auto;
       display:flex;
       justify-content:space-between;
       text-align:center;
   } 
   .threetab3-ul>.threetab3-li{
          width:30px;
        height:30px;
        border-radius:50%;
        background-color:#797979;
   }
    .threetab3-ul>.threetab3-li>a{
        display:block;
          width:30px;
        height:30px;
        border-radius:50%;
        line-height:30px;
        color:#fff !important;
        font-size:16px;
    }
    .threetab3-ul>.threetab3-li:hover{
       background-color:#69cfc1;
    }
    .active{
        background-color:#69cfc1;
    }
    .none{
        display:none;
    }
</style>