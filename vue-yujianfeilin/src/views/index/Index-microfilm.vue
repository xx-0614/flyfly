<template>
    <div class="microfilm">
        <div class="m-title">
            <p>FEELING EMOTION MICROFILM</p>
            <div class="m-bg"></div>
            <p>情绪微电影</p>
        </div>
        <div class="carousel"> 
            <el-carousel	:interval="3000"	type="card"	height="500px">
                <el-carousel-item	 v-for="(item,index) in microfilm" :key="index" @click.native="toFilm">
                    <img :src="require(`../../assets/${item.img}`)">
                </el-carousel-item>
            </el-carousel>
        </div>
        <div class="m-bottom">
            <img src="../../assets/img/index/txt2.png" alt="">
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{}
    },
    props:["microfilm"],
    methods:{
        //点击跳转页面
        toFilm(){
            this.$router.push("/Six");
            scrollTo(0,0);
        }
    }
}
</script>
<style scoped>
    .microfilm{
        overflow:hidden;
        margin-bottom:103px;
    }
    .m-title{
        cursor:pointer;
        position:relative;
        transition:.3s;
        top:0;
        text-align:center;
    }
    .m-title p:first-child{
        font-size:36px;
        color:#2f2f2f;
        line-height:1.5em;
        font-weight:CenturyGothicbold;
        margin-bottom:22px;
    }
    .m-title p:last-child{
        font-size:30px;
        font-family:Heavy;
    }
    .m-title .m-bg{
        display:block;
        height:4px;
        background:url(../../assets/img/index/h2.png) center center no-repeat;
        margin-bottom:28px;
    }
    .m-title:hover{
        top:-10px;
    }
    .el-carousel__item img{
        width:100%;
        /* background:url(../../assets/img/index/211435017512.jpg) center center no-repeat; */
    }
/*     
    div.el-carousel__item:nth-child(4){
        background:url(../../assets/img/index/211445188656.jpg) center center no-repeat;
    }
    div.el-carousel__item:nth-child(5){
        background:url(../../assets/img/index/j-i18.jpg) center center no-repeat;
    }
    div.el-carousel__item:nth-child(6){
        background:url(../../assets/img/index/1562033758195958.jpg) center center no-repeat;
    }
    div.el-carousel__item:nth-child(7){
        background:url(../../assets/img/index/1561438545370178.jpg) center center no-repeat;
    }
    div.el-carousel__item:nth-child(8){
        background:url(../../assets/img/index/1561438552808543.jpg) center center no-repeat;
    }
     */

    .carousel{
        margin:50px;
    }
    .m-bottom{
        overflow:hidden;
    }
    .m-bottom img{
        display:block;
        margin:0 auto;
    }
</style>

