<template>
    <div class="footer">
        <div class="footer-wp">
            <div class="footer-top">
                <div class="footer-logo">
                    <a href="javascript:;">
                        <img src="..\assets\img\index\fdlogo.png" alt="">
                    </a>
                </div>
                <div class="footer-nav">
                    <dl>
                        <dt>遇见菲林</dt>
                        <dd>
                            <a href="
                            ">当季特惠</a>
                            <a href="
                            ">微电影</a>
                            <a href="
                            ">影像花絮</a>
                            <a href="
                            ">品牌介绍</a>
                            <a href="
                            ">服务保障</a>
                            <a href="
                            ">真实好评</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>风格推荐</dt>
                        <dd>
                            <a href="">INS系列</a>
                            <a href="">小清新系列</a>
                            <a href="">国潮系列</a>
                            <a href="">造星系列</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>客片大赏</dt>
                        <dd>
                            <a href="">三亚/SANYA</a>
                            <a href="">丽江/LIJIANG</a>
                            <a href="">大理/DALI</a>
                            <a href="">青海/QINGHAI</a>
                            <a href="">查看更多/MORE</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>店面地址</dt>
                        <dd>
                            <a href="">三亚店：金鸡岭路凤凰水城红树湾</a>
                            <a href="">丽江店：束河古镇天域阳光</a>
                            <a href="">大理店：大理镇学府路大院</a>
                            <a href="">青海店：香巴拉广场</a>
                            <a href="">查看更多</a>
                        </dd>
                    </dl>
                </div>
            </div>
            <div class="footer-middle">
                <div class="footer-left">
                    <ul>
                        <li>
                            <a href="http://www.baidu.com">
                                <div>
                                    <img src="../assets/img/index/iconq3.png" alt="">
                                    <span>遇见菲林旗舰店</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.baidu.com">
                                <div>
                                    <img src="../assets/img/index/iconq4.png" alt="">
                                    <span>青海微博</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.baidu.com">
                                <div>
                                    <img src="../assets/img/index/iconq4.png" alt="">
                                    <span>大理微博</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.baidu.com">
                                <div>
                                    <img src="../assets/img/index/iconq4.png" alt="">
                                    <span>三亚微博</span>
                                </div>
                            </a>
                        </li>
                        <li>
                             <a href="http://www.baidu.com">
                                <div>
                                    <img src="../assets/img/index/iconq4.png" alt="">
                                    <span>丽江微博</span>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="footer-right">

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
.footer{
    background:url("../assets/img/index/bgq1.jpg") center center no-repeat;
    background-size:cover;
    padding-top:105px;
    padding-bottom:32px;
}
.footer-wp{
    max-width:1540px;
    margin:0 auto;
}
.footer-top{
    margin-bottom:68px;
    padding-bottom:50px;
    border-bottom:1px solid #414141;
}
.footer-top{
    content:"";
    display:block;
    clear:both;
}
.footer-logo{
    float:right;
    width:362px;
    margin-right:-32px;
    overflow:hidden;
    margin-left:20px;
}
.footer-nav{
    overflow:hidden;
    padding-left:30px;
}
.footer-nav dl{
    float:left;
    overflow:hidden;
    margin-right:100px;
}
.footer-nav dt{
    font-size:20px;
    color:#69cfc1;
    line-height:2.45em;
    font-weight:700;
    font-family:Heavy;
    margin-bottom:5px;
    overflow:hidden;
    white-space:nowrap;
    text-overflow:ellipsis;
}
.footer-nav dd{
    overflow: hidden;
}
.footer-nav dd a{
    display:block;
    font-size:14px;
    color:rgb(145,145,145);
    line-height:2.4em;
    font-family:宋体;
    margin-bottom:15px;
    white-space: nowrap;
    text-overflow: ellipsis;
    border-bottom:1px dotted rgb(145,145,145);
    overflow: hidden;
    transition:all .3s ease 0s;
}
.footer-nav dd a:hover{
    color:#fff;
}
.footer-middle{
    margin-bottom:64px;
    font-family:宋体;
    overflow:hidden;
}
.footer-left{
    float:left;
    width:60%;
    position:relative;
    padding-top:28px;
    padding-bottom:45px;
}
.footer-left ul{
    list-style:none;
    margin-bottom:41px;
    overflow: hidden;
}
.footer-left ul li{
    margin-right:10px;
    float:left;
}
.footer-left ul li a{
    display:block;
    transition:.3s;
}
.footer-left ul li a div{
    float:left;
    height:45px;
    line-height:45px;
    margin-left:15px;
    overflow:hidden;
}
.footer-left ul li a div img{
    display:inline-block;
    vertical-align: middle;
    max-width:100%;
    max-height:100%;
    margin-top:-8px;
}
.footer-left ul li a div span{
    font-size:14px;
    color:#919191;
    margin-left:15px;
}
</style>

