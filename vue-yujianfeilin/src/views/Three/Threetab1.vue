<template>
    <div class="threetab1-header">
        <div class="threetab1-bodyer">
            <ul class="threetab1-ul">
              <li class="threetab1-li" >
                   <a href="#">
                       <div class="threetab1-div1">
                          <img :src="imgurl">
                          <div class="threetab1-div2"></div>
                       </div>
                       <div class="threetab1-div3">
                           <span>{{subtitle}}</span>
                           <p>{{dates}}</p>
                       </div>
                   </a> 
              </li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
      props:{
        imgurl:{default:""},
        subtitle:{default:""},
        dates:{default:""},
    },
    data(){
        return {}
    }
}
</script>
<style scoped>
    @import "../../assets/common.css";
    .threetab1-header{
        margin:0 auto; 
        text-align:left;  
    }
    .threetab1-ul{
        list-style:none;
        display:flex;
        flex-wrap:wrap;
    }
    .threetab1-ul>.threetab1-li{
        width:333.25px;
        height:548.09px;
        margin-bottom:56px;
    }
    .threetab1-ul>.threetab1-li>a{
        display:block;
        background-color:#fff;
        width:311.250px;
        height:548.094px;       
    }
    .threetab1-ul>.threetab1-li>a>.threetab1-div1>img{
        position:absolute;
        width:311.25px;
        height:473.09px;       
     }
    .threetab1-ul>.threetab1-li>a span{
         font-size:22px;
         color:#000;
         margin-top:10px;
         padding-left:20px;
     }
    .threetab1-ul>.threetab1-li>a span:hover{
         color: #69cfc1;
     }
   .threetab1-ul>.threetab1-li>a>.threetab1-div1{
        margin-bottom:10px;
        margin-top:80px;
        width:100%; 
        height:473.09px;
        position:relative;
        overflow:hidden;   
    }
     .threetab1-ul>.threetab1-li>a>.threetab1-div1:hover .threetab1-div2{
         top:0;
         opacity:1;
     }
    .threetab1-ul>.threetab1-li>a>.threetab1-div3>p{
        font-size:12px;
        color:#7a7a7a;
        padding-left:22px;  
    }
    .threetab1-div2{
       position:absolute;
       top:50%;
        width:311.25px;
        height:473.09px;
        background:url(../../assets/img/three/sanya/style/h1.png) no-repeat;
        opacity:0;
       transition:all 0.3s linear;
    }    
</style>