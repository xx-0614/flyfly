<template>
    <div class="threetab2-header">
        <div class="threetab2-bodyer">
            <ul class="threetab2-ul">
              <li class="threetab2-li">
                   <a href="#">
                       <p>
                          <img :src="imgurl">
                       </p>
                       <div>
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
<<<<<<< HEAD
<style scoped>
=======
<style>
>>>>>>> 5267fc4dbb0b2e496fe567b6c708e8f68d960486
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
    .threetab2-ul>.threetab2-li>a>p img{
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
   .threetab2-ul>.threetab2-li>a p{
        margin-bottom:10px;
        margin-top:5px; 
    }
    .threetab2-ul>.threetab2-li>a>div>p{
        font-size:12px;
        color:#7a7a7a;
        padding-left:20px;  
    }
</style>