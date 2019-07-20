<template>
    <div class="style">
        <div class="ban">
            <img src="../../assets/img/second/j-ban02.jpg" alt="">
        </div>
        <div class="main">
            <div class="content">
                <div class="content-left">
                    <div class="nav-fix">
                        <div class="title">
                            <h3>风格系列</h3>
                            <span>Style series</span>
                        </div>
                        <ul>
                            <li>
                                <h4>INS系列</h4>
                                <dl>
                                    <dd>
                                        <a href="javascript:;">ins生活</a>
                                    </dd>
                                    <dd>
                                        <a href="javascript:;">ins时尚</a>
                                    </dd>
                                    <dd>
                                        <a href="javascript:;">ins优雅</a>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <h4>小情新系列</h4>
                                <dl>
                                    <dd>
                                        <a href="javascript:;">文艺清新</a>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <h4>国潮系列</h4>
                                <dl>
                                    <dd>
                                        <a href="javascript:;">国潮客片</a>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <h4>造星系列</h4>
                                <dl>
                                    <dd>
                                        <a href="javascript:;">素人打造</a>
                                    </dd>
                                </dl>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="content-right"></div>
            </div>
        </div>
        
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
@import "../../assets/common.css";
.style{
    width:100%;
    height:100%;
    background:#000 !important;
}
.ban img{
    display:block;
    width:100%;
}
.main{
    margin:0 auto;
}
.content{
    overflow:hidden;
    margin-top:252px;
}
.content-left{
    float: left;
    width:25%;
    margin-right:5%;
}
.nav-fix{
    background:#242424;
    padding-bottom:6px;
    width:360px;
}
.title{
    padding:17px 26px 19px;
}
.title h3{
    line-height:1.1em;
    font-size:29px;
    color:#dfedfb;
    font-weight:400;
    margin-bottom:2px;
    font-family:Regular;
}
.title span{
    font-size:12px;
    color:#616161;
    line-height:1.1em;
    font-family:Light;
}
.nav-fix{
    position:fixed;
    top:150px;
    width:360px;
}
.nav-fix ul{
    list-style:none;
}
.nav-fix ul li h4{
    color: #7c7c7c;
    font-size:16px;
    padding:0 26px;
    cursor:pointer;
    font-weight:400;
    font-family:Light;
    line-height:50px;
}
.nav-fix ul li h4.avtive{
    background-color:#69cfc1;
    color:#fff;
}
.nav-fix dl{
    padding:34px 0 9px;
}
.nav-fix dl dd{
    padding-left:42px;
    margin-bottom:14px;
}
.nav-fix dl dd a{
    color:#7c7c7c;
    background:url(../../assets/img/second/j-p3.png) left center no-repeat;
    background-size: 3px 3px;
    position:relative;
    font-size:16px;
    display:inline-block;
    padding-left:19px;
}
.nav-fix dl dd.active a{
    color:#fff;
    background-image:url(../../assets/img/second/j-p3h.png)
}
</style>

