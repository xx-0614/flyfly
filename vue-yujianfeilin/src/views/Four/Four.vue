<template>
    <div>
        <div class="four-content">
            <div class="four-header">
               <img src="../../assets/img/four/sanya/people/ban-h3.jpg">
            </div>
            <div class="four-text">
               <h3>BEAUTIFUL GUEST PHOTO</h3>
               <div class="four-text-bg"></div>
               <h4>纪爱时光机</h4>
            </div>
        </div>  
        <threetabbar></threetabbar>     
    </div>
</template>
<script>
import Fourtabbar from './Fourtabbar.vue';
export default {
      data(){
          return {}
      },
       components:{
        "threetabbar":Fourtabbar
    },
    methods: {
    },
}
</script>
<style scoped>
    .four-content{
       text-align:center; 
    }
    .four-header>img{
       width:100%;
       height:751px;
       margin:0 auto;
    }
    .four-text{
        width:100%;
        height:224px;
        font-size:36px;
        padding-top:70px;
        margin-bottom:105px;
        text-align:center;
        transition:all 0.3s linear;
    }
    .four-text:hover{
         padding-top:60px;
    }
    .four-text>h3,.four-text>h4{
        color: #2f2f2f;
         font-weight:400;
        
    }
    .four-text-bg{
        width:1410px;
        height:3.98px;
        background:url("../../assets/img/four/sanya/people/h2.png") no-repeat;
        margin:28px auto;
    }
    
</style>