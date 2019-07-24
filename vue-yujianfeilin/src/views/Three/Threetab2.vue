<template>
    <div class="threetab2-header">
        <div class="threetab2-bodyer">
            <ul class="threetab2-ul">
              <li class="threetab2-li">
                   <a href="#">
                       <div class="threetab2-div1">
                          <img :src="imgurl">
                          <div class="threetab2-div2"></div>
                       </div>
                       <div class="threetab2-div3">
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
<style>
    @import "../../assets/common.css";
    .threetab2-header{
        margin:0 auto; 
        text-align:left;   
    }
    .threetab2-ul{
        list-style:none;
        display:flex;
        flex-wrap:wrap;
    }
    .threetab2-ul>.threetab2-li{
        width:333.25px;
        height:548.09px;
        margin-bottom:56px;
    }
    .threetab2-ul>.threetab2-li>a{
        display:block;
        background-color:#fff;
        width:311.250px;
        height:548.094px;
    }
    .threetab2-ul>.threetab2-li>a>.threetab2-div1>img{
        position:absolute;
        width:311.25px;
        height:473.09px;
     }
    .threetab2-ul>.threetab2-li>a span{
         font-size:22px;
         color:#000;
         margin-top:10px;
         padding-left:20px;
     }
    .threetab2-ul>.threetab2-li>a span:hover{
         color: #69cfc1;
     }
   .threetab2-ul>.threetab2-li>a>.threetab2-div1{
        margin-bottom:10px;
        margin-top:80px; 
         width:100%; 
        height:473.09px;
        position:relative;
        overflow:hidden;   
    }
     .threetab2-ul>.threetab2-li>a>.threetab2-div1:hover .threetab2-div2{
         top:0;
         opacity:1;
     }
    .threetab2-ul>.threetab2-li>a>.threetab2-div3>p{
        font-size:12px;
        color:#7a7a7a;
        padding-left:20px;  
    }
    .threetab2-div2{
        position:absolute;
        top:50%;
        width:311.25px;
        height:473.09px;
        background:url(../../assets/img/three/sanya/style/h1.png) no-repeat;
        opacity:0;
       transition:all 0.3s linear;
    }    
</style>