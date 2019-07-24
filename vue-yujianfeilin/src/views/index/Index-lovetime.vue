<template>
    <div class="lovetime">
        <div class="content">
            <div class="l-title">
                <p>BEAUTIFUL GUEST PHOTO</p>
                <div class="l-bg"></div>
                <p>纪爱时光机</p>
            </div>
            <ul>
                <li v-for="(item,i) of lovetime.slice(0,4)" :key="i">
                    <router-link to="">
                        <div class="pic">
                            <img :src="require(`../../assets/${item.img}`)" alt="">
                            <div class="bg"></div>
                        </div>
                        <div class="text">
                            <h3>{{item.title}}</h3>
                            <p>{{item.dates}}</p>
                        </div>
                    </router-link>
                </li>
            </ul>
            <router-link to="" class="pageMore" @click.native="toFour">查看更多</router-link>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{}
    },
    props:["lovetime"],
    methods:{
        toFour(){
            this.$router.push("/Four");
            scrollTo(0,0)
        }
    }
}
</script>
<style scoped>
    .lovetime{
        width:100%;
        overflow:hidden;
        padding:100px 0 160px;
    }
    .content{
        margin:0 auto;
        max-width:1540px;
        padding:0 10px;
    }
    .l-title{
        cursor:pointer;
        position:relative;
        transition:.3s;
        top:0;
        text-align:center;
    }
    .l-title p:first-child{
        font-size:36px;
        color:#2f2f2f;
        line-height:1.5em;
        font-weight:CenturyGothicbold;
        margin-bottom:22px;
    }
    .l-title p:last-child{
        color:#2f2f2f;
        font-size:30px;
        font-family:Heavy;
    }
    .l-title .l-bg{
        display:block;
        height:4px;
        background:url(../../assets/img/index/h2.png) center center no-repeat;
        margin-bottom:28px;
    }
    .l-title:hover{
        top:-10px;
    }
    ul{
        margin-top:97px;
        margin-bottom:55px;
        overflow:hidden;
        list-style:none;
    }
    ul li{
        float:left;
        width:25%;
        padding:10px;
        overflow:hidden;
        font-family:Light;
    }
    ul li a{
        display:block;
        margin:0 15px;
        background-color:#fff;
    }
    .pic{
        padding-top:152%;
        height:0;
        position:relative;
        overflow: hidden;
        
    }
    .pic img{
        display:block;
        width:100%;
        height:100%;
        position:absolute;
        top:0;
        left:0;
    }
    .pic .bg{
        position:absolute;
        top:50%;
        left:0;
        width:100%;
        height:100%;
        background:url(../../assets/img/index/h1.png) no-repeat;
        background-size:100% 100%;
        opacity:0;
        transition:all .5s;
    }
    .text{
        padding:14px 20px;
    }
    .text h3{
        font-size:22px;
        color:#000;
        line-height:24px;
        font-weight:400;
        margin-bottom:8px;
        overflow:hidden;
        white-space:nowrap;
        text-overflow:ellipsis;
    }
    .pic:hover .bg{
        opacity:1;
        top:0;
    }
    ul li a:hover h3{
        color:#69cfc1;
    }
    .pageMore{
        width: 150px;
        height: 30px;
        line-height: 30px;
        color: #666;
        border-radius: 5px;
        background-color: #fff;
        text-align: center;
        display: block;
        margin: 40px auto;
        font-size: 16px;
        transition:all .3s;
    }
    .pageMore:hover{
        color:#69cfc1;
    }
</style>

