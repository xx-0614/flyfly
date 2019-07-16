<template>
    <div class="fivetab-content">
       <div class="fivetab-header">
          <ul class="fivetab-ul">
             <li class="fivetab-li">
                  <a href="#" class="fivetab-a1">
                      <div class="fivetab-hidden fivetab-block">
                         <span></span>
                      </div>
                     <img :src="imgurl">
                  </a>
                  <a href="#" class="fivetab-a2">
                     <p class="fivetab-p">{{title}}</p>
                     <span class="fivetab-span">{{subtitle}} {{dates}}-{{datess}}</span>
                     <a href="#" class="fivetab-a3">MORE</a>
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
        title:{default:""},
        subtitle:{default:""},
        dates:{default:""},
        datess:{default:""},
      
    },
    data(){
        return {}
    }
}
</script>
<style scoped>

    .fivetab-header{
        width:1250px;
        margin-top:120px;
        margin:0 auto;
        overflow:hidden;
    }
    .fivetab-ul{
        list-style:none;
    }
    .fivetab-ul>.fivetab-li{
        width:1250px;
        height:662px;
        margin-bottom:90px;
    }
    .fivetab-a1,.fivetab-a2{
        display:block;
        text-decoration:none;
        margin-bottom:35px;   
    }
     .fivetab-a1{
         width:1250px;
         height:520px;
         overflow:hidden;
         position:relative;
     }
     .fivetab-a2{
         padding-bottom:50px;
         border-bottom:1px solid #b2b2b2;
     }
     .fivetab-a3{
        float:right;
     }
     .fivetab-a1>img{
        width:1250px;
        height:520px; 
        transition:all .3s linear;     
     }
     .fivetab-a1:hover img{
       transform:scale(1.05);    
     }
    .fivetab-a1:hover div{
        opacity:1;
        z-index:5;
    }
    .fivetab-p:hover{
        color:#69cfc1;
    }
    .fivetab-p{
        font-size:30px;
        color:#444;
        margin-bottom:5px;
    }
    .fivetab-span{
        font-size:16px;
        color:#7a7a7a;
    }
    .fivetab-hidden{
        position:absolute;
        top:0;
        left:0;
        width:100%;
        height:100%;
        background:rgb(0,0,0,0.3);
        opacity:0;     
    }
    .fivetab-hidden>span{
        position:absolute;
        top:50%;
        left:50%;
        margin-top:-34px;
        margin-left:-34px;
        width:68px;
        height:68px;
        background:url(../../assets/img/five/j-p1.png) center center no-repeat;
    }
   
</style>