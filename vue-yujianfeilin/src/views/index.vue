<template>
    <el-carousel :interval="5000" height="750px">
        <el-carousel-item v-for="item in 3" :key="item">
            <h3>{{ item }}</h3>
        </el-carousel-item>
    </el-carousel>
</template>
<script>
export default {
    data(){
        return {
            carousel:[],
        }
    },
    created(){
        this.load();
    },
    
    methods:{
        load(){
          this.axios.get("http://127.0.0.1:3000/index").then(result=>{
             console.log(result)
            this.carousel=result;
            })
         }
    },
}
</script>
<style>
.el-carousel__item h3 {
    color: #475669;
    font-size: 18px;
    opacity: 0.75;
    line-height: 300px;
    margin: 0;
  }
  .el-carousel__item{
    background:url(../assets/img/index/banner1.jpg);
  }
  
  div.el-carousel__item:nth-child(4){
    background:url(../assets/img/index/271736095684.jpg);
  }
  div.el-carousel__item:nth-child(5){
    background:url(../assets/img/index/091400381481.jpg);
  }

</style>
