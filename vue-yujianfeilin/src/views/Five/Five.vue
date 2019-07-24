<template>
    <div>
        <div class="five-content">
            <div class="five-header">
               <img src="../../assets/img/five/j-ban01.jpg">
            </div>
            <div class="five-text">
               <h3>DISCOUNT ACTIVITIES</h3>
               <div class="five-text-bg"></div>
               <h4>限时优惠活动</h4>
            </div>
        </div> 
        <div class="fivtab">       
            <fivetab v-for="(item ,i) of weekyear" :key="i"
            :imgurl="require(`../../assets/${item.img}`)"
            :title="item.title"
            :subtitle="item.subtitle"
            :dates="item.dates"
            :datess="item.datess"
            ></fivetab>     
        </div>
    </div>
</template>
<script>
import Fivetab from './Fivetab.vue';
export default {
    
      data(){
          return {
              weekyear:[]
          }
      },
       components:{
         "fivetab":Fivetab
     },
    methods: {
         load(){
          this.axios.get("http://127.0.0.1:3000/five").then(result=>{
             console.log(result.data) 
             this.weekyear=result.data;
             console.log(this.weekyear)
            })
         }
    },
    created(){
        this.load();
    }
}
</script>
<style scoped>
    .five-content{
       text-align:center; 
    }
    .five-header>img{
       width:100%;
       height:751px;
    }
    .five-text{
        width:100%;
        height:224px;
        font-size:36px;
        padding-top:70px;
        margin-bottom:105px;
        text-align:center;
        transition:all 0.3s linear;
    }
    .five-text:hover{
         padding-top:60px;
    }
    .five-text>h3,.three-text>h4{
        color: #2f2f2f;
         font-weight:400;
        
    }
    .five-text-bg{
        width:1410px;
        height:3.98px;
        background:url("../../assets/img/three/sanya/style/h2.png") no-repeat;
        margin:28px auto;
    }
    .fivetab{
        width:100%;
        height:3361px;
    }
</style>
