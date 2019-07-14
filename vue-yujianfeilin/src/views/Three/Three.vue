<template>
    <div>
        <div class="three-content">
            <div class="three-header">
               <img src="../../assets/img/three/ban-h1.jpg">
            </div>
            <div class="three-text">
               <h3> RECORD LOVE TOUR AROUND</h3>
               <div class="three-text-bg"></div>
               <h4>菲林环游记</h4>
            </div>
        </div>  
        <threetabbar></threetabbar>     
    </div>
</template>
<script>
import Threetabbar from './Threetabbar.vue';
export default {
      data(){
          return {}
      },
       components:{
        "threetabbar":Threetabbar
    },
    methods: {
         load(){
          this.axios.get("http://127.0.0.1:3000/three").then(result=>{
             console.log(result)
           
            })
         }
    },
    created(){
        this.load();
    }
}
</script>
<style scope>
    .three-content{
       text-align:center; 
    }
    .three-header>img{
       width:100%;
       height:751px;
       margin:0 auto;
    }
    .three-text{
        width:100%;
        height:224px;
        font-size:36px;
        padding-top:70px;
        margin-bottom:105px;
        text-align:center;
        transition:all 0.3s linear;
    }
    .three-text:hover{
         padding-top:60px;
    }
    .three-text>h3,.three-text>h4{
        color: #2f2f2f;
         font-weight:400;
        
    }
    .three-text-bg{
        width:1410px;
        height:3.98px;
        background:url("../../assets/img/three/h2.png") no-repeat;
        margin:28px auto;
    }
    
</style>
