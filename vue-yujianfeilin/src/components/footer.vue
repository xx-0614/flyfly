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
                            <a href="javascript:;">当季特惠</a>
                            <a href="javascript:;">微电影</a>
                            <a href="javascript:;">影像花絮</a>
                            <a href="javascript:;">品牌介绍</a>
                            <a href="javascript:;">服务保障</a>
                            <a href="javascript:;">真实好评</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>风格推荐</dt>
                        <dd>
                            <a href="javascript:;">INS系列</a>
                            <a href="javascript:;">小清新系列</a>
                            <a href="javascript:;">国潮系列</a>
                            <a href="javascript:;">造星系列</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>客片大赏</dt>
                        <dd>
                            <a href="javascript:;">三亚/SANYA</a>
                            <a href="javascript:;">丽江/LIJIANG</a>
                            <a href="javascript:;">大理/DALI</a>
                            <a href="javascript:;">青海/QINGHAI</a>
                            <a href="javascript:;">查看更多/MORE</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>店面地址</dt>
                        <dd>
                            <a href="javascript:;">三亚店：金鸡岭路凤凰水城红树湾</a>
                            <a href="javascript:;">丽江店：束河古镇天域阳光</a>
                            <a href="javascript:;">大理店：大理镇学府路大院</a>
                            <a href="javascript:;">青海店：香巴拉广场</a>
                            <a href="javascript:;">查看更多</a>
                        </dd>
                    </dl>
                </div>
            </div>
            <div class="footer-middle">
                <div class="footer-left">
                    <ul>
                        <li>
                            <a href="javascript:;">
                                <div>
                                    <img src="../assets/img/index/iconq3.png" alt="">
                                    <span>遇见菲林旗舰店</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <div>
                                    <img src="../assets/img/index/iconq4.png" alt="">
                                    <span>青海微博</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <div>
                                    <img src="../assets/img/index/iconq4.png" alt="">
                                    <span>大理微博</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <div>
                                    <img src="../assets/img/index/iconq4.png" alt="">
                                    <span>三亚微博</span>
                                </div>
                            </a>
                        </li>
                        <li>
                             <a href="javascript:;">
                                <div>
                                    <img src="../assets/img/index/iconq4.png" alt="">
                                    <span>丽江微博</span>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <div class="tel">
                        <h3>联系我们：400-837-2227</h3>
                    </div>
                </div>
                <div class="footer-right">
                    <div class="erweima">
                        <div>
                            <img src="../assets/img/index/picq1.jpg" alt="">
                            <p>三亚官方公众号</p>
                        </div>
                        <div>
                            <img src="../assets/img/index/picq2.jpg" alt="">
                            <p>丽江官方公众号</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-copy">
                <p>版权所有© 2012-2018 三亚遇见菲林婚纱摄影有限公司 琼ICP备15001208号-3 技术支持</p>
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
    position:relative;
    z-index:1;
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
    margin-right:100px;
    overflow:hidden;
}
.footer-nav{
    overflow:hidden;
    padding-left:30px;
}
.footer-nav dl{
    float:left;
    width:120px;
    overflow:hidden;
    margin-right:50px;
}
.footer-nav dl:last-child{
    width:210px;
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
.footer-left ul li:hover span{
    color:#fff;
}
.footer-left .tel h3{
    font-size:40px;
    color:#919191;
    font-weight:400;
    line-height:1.2em;
    font-family:CenturyGothicbold;
    margin-left:10px;
}
.footer-left::after{
    content:'';
    width:1px;
    height:238px;
    background-color:#414141;
    position:absolute;
    right:0;
    top:0;
}
.footer-right{
    float:right;
}
.erweima::after{
    content:'';
    display:block;
    clear:both;
}
.footer-right .erweima{
    padding-top:30px;
    margin-right:50px;
}
.footer-right .erweima div{
    float:left;
    margin-left:50px;
    text-align:center;
}
.footer-right .erweima p{
    font-size:14px;
    color:#919191;
    line-height:1.5em;
    overflow:hidden;
    white-space:nowrap;
    text-overflow:ellipsis;
    margin:10px;
}
.footer-copy{
    text-align:center;
    font-size:14px;
    line-height:14px;
    color:rgb(145,145,145);
    overflow:hidden;
}
</style>

