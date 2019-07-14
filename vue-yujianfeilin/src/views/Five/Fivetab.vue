<template>
    <div class="fivetab-content">
       <div class="fivetab-header">
          <ul class="fivetab-ul">
             <li class="fivetab-li">
                  <a href="#" class="fivetab-a">
                     <img :src="imgurl">
                  </a>
                  <a href="#" class="fivetab-a">
                     <p class="fivetab-p">{{title}}</p>
                     <span class="fivetab-span">{{subtitle}} {{dates}}-{{datess}}</span>
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
<style scope>
    .fivetab-content{
      
    }
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
    .fivetab-a{
        display:block;
        text-decoration:none;
        margin-bottom:35px;
        width:1520px;
    }
     .fivetab-a>img{
        width:1520px;
        height:520px;
        transition:all .3s linear;       
     }
     .fivetab-a>img:hover{
       transform:scale(1.05);
     }
     .fivetab-ul>.fivetab-li a:last-child{
         padding-bottom:50px;
         border-bottom:1px solid #b2b2b2;
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
</style>