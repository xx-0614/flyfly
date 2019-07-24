<template>
    <div class="fourtab2-header">
        <div class="fourtab2-bodyer">
            <ul class="fourtab2-ul">
              <li class="fourtab2-li">
                   <a href="#">
                       <div class="fourtab2-div1">
                          <img :src="imgurl">
                          <div class="fourtab2-div2"></div>
                       </div>
                       <div class="fourtab2-div3">
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
    .fourtab2-header{
        margin:0 auto; 
        text-align:left;   
    }
    .fourtab2-ul{
        list-style:none;
        display:flex;
        flex-wrap:wrap;
    }
    .fourtab2-ul>.fourtab2-li{
        width:333.25px;
        height:548.09px;
        margin-bottom:56px;
    }
    .fourtab2-ul>.fourtab2-li>a{
        display:block;
        background-color:#fff;
        width:311.250px;
        height:548.094px;
    }
    .fourtab2-ul>.fourtab2-li>a>.fourtab2-div1>img{
        position:absolute;
        width:311.25px;
        height:473.09px;
     }
    .fourtab2-ul>.fourtab2-li>a span{
         font-size:22px;
         color:#000;
         margin-top:10px;
         padding-left:20px;
     }
    .fourtab2-ul>.fourtab2-li>a span:hover{
         color: #69cfc1;
     }
   .fourtab2-ul>.fourtab2-li>a>.fourtab2-div1{
       margin-bottom:10px;
       margin-top:80px;
       width:311.25px;
       height:473.09px;
       position:relative;
       overflow:hidden;
    }
    .fourtab2-ul>.fourtab2-li>a>.fourtab2-div1:hover .fourtab2-div2{
        top:0;
        opacity:1;
    }
    .fourtab2-ul>.fourtab2-li>a>.fourtab2-div3>p{
        font-size:12px;
        color:#7a7a7a;
        padding-left:20px;
    }
    .fourtab2-div2{
         position:absolute;
        top:50%;
        width:311.25px;
        height:473.09px;
        background:url(../../assets/img/four/sanya/people/h1.png) no-repeat;
        opacity:0;
       transition:all 0.3s linear;
    }
</style>