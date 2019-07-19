<template>
    <div>   
        <!--轮播图-->
        <el-carousel :interval="3000" height="750px">
            <el-carousel-item v-for="(item) in 3" :key="item"></el-carousel-item>
        </el-carousel>
        <div class="main">
            <index-city :city="city"></index-city>
            <index-activity :activity="activity"></index-activity> 
            <index-microfilm ></index-microfilm>
        </div>
    </div>
</template>
<script>
import Indexcity from "./Index-city.vue"
import Indexactivity from "./Index-activity.vue"
import Indexmicrofilm from "./Index-microfilm.vue"
export default {
    data(){
        return {
            city:[],
            activity:[],
            microfilm:[],
            travel:[],
            love_times:[],
            comment:[]
        }
    },
    components:{
        "index-city":Indexcity,
        "index-activity":Indexactivity,
        "index-microfilm":Indexmicrofilm,
    },
    created(){
        this.axios.get("index").then(result=>{
            this.city=result.data.city;
            this.activity=result.data.activity;
            this.microfilm=result.data.microfilm;
            this.travel=result.data.travel;
            this.love_times=result.data.love_times;
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
  .el-carousel__item{
    background:url(../../assets/img/index/banner1.jpg)  center center no-repeat;
  }
  
  div.el-carousel__item:nth-child(4){
    background:url(../../assets/img/index/271736095684.jpg) center center no-repeat;
  }
  div.el-carousel__item:nth-child(5){
    background:url(../../assets/img/index/091400381481.jpg) center center no-repeat;
  }
  .main{
      margin:0 auto;
  }
</style>
