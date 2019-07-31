<template>
    <div>   
        <!--轮播图-->
        <el-carousel :interval="3000" height="750px">
            <el-carousel-item v-for="(mitem,index) in carousel" :key="index">
                <img :src="require(`../../assets/${mitem.img}`)">
            </el-carousel-item>
        </el-carousel>
        <div class="main">
            <index-city :city="city"></index-city>
            <index-activity :activity="activity"></index-activity> 
            <index-microfilm :microfilm="microfilm"></index-microfilm>
            <div class="bg"></div>
            <index-travel :travel="travel"></index-travel>    
            <div class="bg2"></div>
            <index-lovetime :lovetime="lovetime"></index-lovetime>
        </div>
    </div>
</template>
<script>
import Indexcity from "./Index-city.vue"
import Indexactivity from "./Index-activity.vue"
import Indexmicrofilm from "./Index-microfilm.vue"
import Indextravel from "./Index-travel.vue"
import Indexlovetime from "./Index-lovetime.vue"
export default {
    data(){
        return {
            carousel:[],
            city:[],
            activity:[],
            microfilm:[],
            travel:[],
            lovetime:[],
            comment:[]
        }
    },
    components:{
        "index-city":Indexcity,
        "index-activity":Indexactivity,
        "index-microfilm":Indexmicrofilm,
        "index-travel":Indextravel,
        "index-lovetime":Indexlovetime,
    },
    created(){
        this.axios.get("index").then(result=>{
            this.carousel=result.data.carousel;
            this.city=result.data.city;
            this.activity=result.data.activity;
            this.microfilm=result.data.microfilm;
            this.travel=result.data.travel;
            console.log(this.travel)
            this.lovetime=result.data.love_times;
            this.comment=result.data.comment;
        })
    },
}
</script>
<style scoped>
@import "../../assets/common.css";
.el-carousel__item h3 {
    color: #475669;
    font-size: 18px;
    opacity: 0.75;
    line-height: 300px;
    margin: 0;
  }
  .main{
      margin:0 auto;
  }
  .main div.bg,.main div.bg2{
      width:100%;
      height:600px;
      background:url("../../assets/img/index/bg.jpg") center center no-repeat;
      background-size:cover;
      background-attachment: fixed;
      opacity:0.5;
  }
.main div.bg2{
      background:url("../../assets/img/index/bg2.jpg") center center no-repeat;
      background-size:cover;
      background-attachment: fixed;
      opacity:0.8;
}
</style>
