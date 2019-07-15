<template>
    <div class="header">
        <div class="nav">
            <div class="logo">
                <router-link to="/#" class="active">
                    <img src="../assets/img/index/logo.png" alt="">
                </router-link>
            </div>
            <div class="nav-bar">
                <ul class="nav-item" @click="fontWhite">
                    <li><router-link to="/" class="active">首页</router-link></li>
                    <li>
                        <router-link to="/Three">风格系列</router-link>
                        <ul>
                            <li>
                                <router-link to="/Three">INS系列</router-link>
                            </li>
                            <li>
                                <router-link to="/Three">小清新系列</router-link>
                            </li>
                            <li>
                                <router-link to="/Three">国潮系列</router-link>
                            </li>
                            <li>
                                <router-link to="/Three">造型系列</router-link>
                            </li>
                        </ul>
                    </li>
                    <li><router-link to="/Three" >最新客片</router-link></li>
                    <li><router-link to="/Four">100%客片</router-link></li>
                    <li><router-link to="/Five">当季特惠</router-link></li>
                    <li>
                       <router-link to="/Three">微电影</router-link>
                        <ul>
                            <li>
                                <router-link to="/Three">微电影</router-link>
                            </li>
                            <li>
                                <router-link to="/Three">影像花絮</router-link>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <router-link to="/Three">品牌服务</router-link>
                        <ul>
                            <li>
                                <router-link to="/Three">品牌介绍</router-link>
                            </li>
                            <li>
                                <router-link to="/Three">服务保障</router-link>
                            </li>
                            <li>
                                <router-link to="/Three">360°VR全景</router-link>
                            </li>
                        </ul>
                    </li>
                    <li><router-link to="/Three">真实好评</router-link></li>
                </ul>
                <div class="search">
                    <span  @click.stop="d_block"></span>
                    <div class="search-input">
                        <input class="search-text" type="text">
                        <input class="search-submit" type="submit" value="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {}
    },
    methods:{
        //切换导航栏按钮
        fontWhite(e){
            var ul=document.querySelector(".nav-item");
            var a=document.querySelectorAll(".nav-item a");
            if(e.target.nodeName=="A"){
                for(var i=0;i<a.length;i++){
                    a[i].className="";
                }
                e.target.className="active"
            }
        },
        //输入框的显示与隐藏
        d_block(){
            console.log(1)
            var input=document.querySelector(".search-input");
            if(input.style.opacity==0){
                input.style.opacity=1
            }else{
                input.style.opacity=0
            }
           
        }
    },
}
</script>
<style scoped>
    @import "../assets/common.css";

    .header{
    position:fixed;
    background-color:rgba(0,0,0,.75);
    top:0;
    left:0;
    right:0;
    height:100px;
    z-index:9;
}
.header .nav{
    max-width:1540px;
    min-width:1100px;
    margin:0 auto;
}
.header .logo{
    float:left;
    height:100px;
    line-height:100px;
    overflow:hidden;
    margin-left:50px;
}
.header .logo img {
    display: inline-block;
    vertical-align: middle;
    max-width: 100%;
    max-height: 100%;
}
.header a{
    display:block;
}
.header .nav-bar{
    float:right;
}
.header .nav-item{
    float:left;
    list-style:none;
}
.header .nav-item>li{
    float:left;
    margin-left:54px;
    position:relative;
}
.header .nav-item>li>a{
    color:#a6a6a6;
    display:block;
    font-size:15px;
    line-height:100px;
    overflow:hidden;
    position:relative;
    transition:.3s;
}
.header .nav-item>li>a.active{
    color:#fff;
}
.header .nav-item>li>a::after{
    content:"";
    width:20px;
    height:20px;
    background:url("../assets/img/index/iconq1.png") center center no-repeat;
    background-size:cover;
    position:absolute;
    bottom:11px;
    left:0;
    right:0;
    margin:0 auto;
    opacity:0;
    transition:.3s;
}
.header .nav-item li ul{
    position:absolute;
    top:100%;
    left:50%;
    width:150px;
    margin-left:-75px;
    list-style:none;
    height:0;
    background-color:#242424;
    padding-top:0;
    border-top:0px;
    overflow: hidden;
    transition:all .5s;
}
.header .nav-item>li:hover>ul{
    height:230px;
    border-top:2px solid #69cfc1;
    padding-top:3px;
}
.header .nav-item>li:nth-child(6):hover>ul{
    height:120px;
}
.header .nav-item>li:nth-child(7):hover>ul{
    height:175px;
}
.header .nav-item>li:hover>a{
    color:#fff;
    margin-top:-10px;
    margin-bottom:10px;
}
.header .nav-item>li:hover>a::after{
    opacity:1;
}
.header .nav-item>li>ul a{
    display:block;
    text-align:center;
    font-size:14px;
    color:#909090;
    line-height:55px;
    padding:0 5px;
    transition:all .5s;
}
.header .nav-item>li>ul a:hover{
    background:#69cfc1;
    color:#fff;
}
.header .search{
    float:left;
    margin-left:13px;
    margin-top:35px;
    position:relative;
}
.header .search span{
    display:block;
    width:30px;
    height:30px;
    background:url("../assets/img/index/iconq2.png") center center no-repeat;
    background-size:cover;
    margin-left:10px;
    position:relative;
    cursor:pointer;
}
.header .search span::after{
    content:'';
    width:1px;
    height:12px;
    background-color:#fff;
    position:absolute;
    left:-10px;
    top:50%;
    margin-top:-6px;
}
.header .search .search-input{
    position:absolute;
    top:35px;
    right:0;
    width:200px;
    height:28px;
    background-color:#fff;
    padding-right:30px;
    border-radius:15px;
    opacity:0;
    transition:.5s;
}
.header .search .search-text{
    display:block;
    width:100%;
    height:28x;
    border:none;
    padding:0 10px;
    font-size:14px;
    color:#000;
    line-height:28px;
    overflow:hidden;
    border-radius:15px;
}
.header .search .search-submit{
    display:block;
    width:30px;
    height:28px;
    background:url("../assets/img/index/iconq2-1.png") center center no-repeat;
    background-size:cover;
    position:absolute;
    top:0;
    right:0;
    border:none;
    cursor:pointer;
}
</style>

