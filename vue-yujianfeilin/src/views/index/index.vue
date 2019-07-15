<template>
    <div>   
        <!--轮播图-->
        <el-carousel :interval="3000" height="750px">
            <el-carousel-item v-for="(item) in 3" :key="item"></el-carousel-item>
        </el-carousel>
        <div class="main">
            <indexcity :city="city"></indexcity>
            <indexactivity :activity="activity"></indexactivity>   
        </div>
    </div>
</template>
<script>
import Indexcity from "./Indexcity.vue"
import Indexactivity from "./Indexactivity.vue"
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
        "indexcity":Indexcity,
        "indexactivity":Indexactivity,
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
    background:url(../../assets/img/index/banner1.jpg);
  }
  
  div.el-carousel__item:nth-child(4){
    background:url(../../assets/img/index/271736095684.jpg);
  }
  div.el-carousel__item:nth-child(5){
    background:url(../../assets/img/index/091400381481.jpg);
  }

</style>
