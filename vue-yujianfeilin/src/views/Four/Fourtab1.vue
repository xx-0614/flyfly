<template>
    <div class="fourtab1-header">
        <div class="fourtab1-bodyer">
            <ul class="fourtab1-ul">
              <li class="fourtab1-li">
                   <a href="#">
                       <div class="fourtab1-div1">
                          <img :src="imgurl">
                          <div class="fourtab1-div2"></div>
                       </div>
                       <div class="fourtab1-div3">
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
    .fourtab1-header{
        margin:0 auto;   
        text-align:left; 
    }
    .fourtab1-ul{
        list-style:none;
        display:flex;
        flex-wrap:wrap;
    }
    .fourtab1-ul>.fourtab1-li{
        width:333.25px;
        height:548.09px;
        margin-bottom:56px;
    }
    .fourtab1-ul>.fourtab1-li>a{
        display:block;
        background-color:#fff;
        width:311.250px;
        height:548.094px;
    }
    .fourtab1-ul>.fourtab1-li>a>.fourtab1-div1>img{
        position:absolute;
        width:311.25px;
        height:473.09px;
     }
    .fourtab1-ul>.fourtab1-li>a span{
         font-size:22px;
         color:#000;
         margin-top:10px;
         padding-left:20px;
     }
    .fourtab1-ul>.fourtab1-li>a span:hover{
         color: #69cfc1;
     }
   .fourtab1-ul>.fourtab1-li>a>.fourtab1-div1{
       margin-bottom:10px;
       margin-top:80px;
       position:relative;
       width:311.25px;
       height:473.09px;
       overflow:hidden;
    }
    .fourtab1-ul>.fourtab1-li>a>.fourtab1-div1:hover .fourtab1-div2{
        top:0;
        opacity:1;
    }
    .fourtab1-ul>.fourtab1-li>a>.fourtab1-div3>p{
        font-size:12px;
        color:#7a7a7a;
        padding-left:20px;
    }
    .fourtab1-div2{
         position:absolute;
        top:50%;
        width:311.25px;
        height:473.09px;
        background:url(../../assets/img/three/h1.png) no-repeat;
        opacity:0;
       transition:all 0.3s linear;
    }
</style>