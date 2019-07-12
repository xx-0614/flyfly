<template>
    <div class="header">
        <div class="nav">
            <div class="logo">
                <a href="#">
                    <img src="img/index/logo.png" alt="">
                </a>
            </div>
            <div class="nav-bar">
                <ul class="nav-item">
                    <li class="active"><a href="">首页</a></li>
                    <li>
                        <a href="">风格系列</a>
                        <ul>
                            <li>
                                <a href="">INS系列</a>
                            </li>
                            <li>
                                <a href="">小清新系列</a>
                            </li>
                            <li>
                                <a href="">国潮系列</a>
                            </li>
                            <li>
                                <a href="">造型系列</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="">最新样片</a></li>
                    <li><a href="">100%客片</a></li>
                    <li><a href="">当季特惠</a></li>
                    <li>
                        <a href="">微电影</a>
                        <ul>
                            <li>
                                <a href="">微电影</a>
                            </li>
                            <li>
                                <a href="">影像花絮</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="">品牌服务</a>
                        <ul>
                            <li>
                                <a href="">品牌介绍</a>
                            </li>
                            <li>
                                <a href="">服务保障</a>
                            </li>
                            <li>
                                <a href="">360°VR全景</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="">真实好评</a></li>
                </ul>
                <div class="search">
                    <span></span>
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
    }
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
.header .nav-item>li.active>a{
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
    display:block;
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

