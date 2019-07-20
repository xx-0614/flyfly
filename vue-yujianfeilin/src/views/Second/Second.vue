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
                                <h4 @click="change(0)" :class="{active:currentIndex[0].isActive}">INS系列</h4>
                                <dl :class="{active:currentIndex[0].isActive}" >
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
                                <h4 @click="change(1)" :class="{active:currentIndex[1].isActive}">小情新系列</h4>
                                <dl :class="{active:currentIndex[1].isActive}">
                                    <dd>
                                        <a href="javascript:;">文艺清新</a>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <h4 @click="change(2)" :class="{active:currentIndex[2].isActive}">国潮系列</h4>
                                <dl :class="{active:currentIndex[2].isActive}">
                                    <dd>
                                        <a href="javascript:;">国潮客片</a>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <h4 @click="change(3)" :class="{active:currentIndex[3].isActive}">造星系列</h4>
                                <dl :class="{active:currentIndex[3].isActive}">
                                    <dd>
                                        <a href="javascript:;">素人打造</a>
                                    </dd>
                                </dl>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="content-right">
                    <div class="img1">
                        <img src="../../assets/img/second/j-i5.jpg" alt="">
                    </div>
                    <div class="text">
                        <h4>ins STYLE生活系列作品</h4>
                        <p>旅拍的意义就是与你的亲密爱人来一场意料之外的婚礼，在旅途上，你不知道会发生什么，也许上一秒的阴雨，下一秒就会变成波澜壮阔的美景。寻找旅途上最美的风景，把两人美好的时光紧紧封存在简单而平凡的相册里。</p>
                    </div>
                    <div class="img2">
                        <img src="../../assets/img/second/j-i6.jpg" alt="">
                        <img src="../../assets/img/second/j-i7.jpg" alt="">
                        <img src="../../assets/img/second/j-i8.jpg" alt="" >
                        <img src="../../assets/img/second/j-i9.jpg" alt="">
                        <img src="../../assets/img/second/j-i10.jpg" alt="">
                        <img src="../../assets/img/second/j-i11.jpg" alt="">
                        <img src="../../assets/img/second/j-i12.jpg" alt="">
                        <img src="../../assets/img/second/j-i13.jpg" alt="">
                        <img src="../../assets/img/second/j-i14.png" alt="">
                        <img src="../../assets/img/second/j-i15.jpg" alt="">
                        <img src="../../assets/img/second/j-i16.jpg" alt="">
                        <img src="../../assets/img/second/j-i17.jpg" alt="">
                        <img src="../../assets/img/second/j-i18.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</template>
<script>
export default {
    data(){
        return {
            currentIndex:[
                {isActive:true},
                {isActive:false},
                {isActive:false},
                {isActive:false},
            ],
        }
    },
    methods:{
       change(n){
           for(var i=0;i<this.currentIndex.length;i++){
               if(i==n){
                    this.currentIndex[i].isActive=true;
               }else{
                   this.currentIndex[i].isActive=false;
               }
           }
       },
       scrollFixed(){
           var fixed=document.querySelector(".content-left>div");
           if(window.scrollY>680&& window.scrollY<document.body.scrollHeight-1500){
               fixed.className="nav-fix fixed"
           }else{
               fixed.className="nav-fix"
           }
       }
    },
    mounted(){
        window.addEventListener('scroll', this.scrollFixed)
    }
}
</script>
<style scoped>
@import "../../assets/common.css";
.content-right{
    width:60%;
    float:right;
    overflow:hidden;
    margin-left:30px;
    margin-right:130px;
    
}
.content-right .img1{
    max-width:100%;
}
.content .text{
    margin-top:58px;
    margin-bottom:153px;
}
.content .text h4{
    color:#c1c1c1;
    font-size:40px;
    height:40px;
    line-height:40px;
    border-left:6px solid #69cfc1;
    padding-left:31px;
    font-weight:400;
    margin-bottom:90px;
}
.content .text p{
    text-indent:2em;
    font-size:30px;
    color:#c1c1c1;
    line-height:1.6em;
}
.content .img2 img{
    width:100%;
    margin:10px;
    display:inline-block;
}
.style{
    width:100%;
    height:100%;
    background:#1d1d1d;
}
.ban img{
    display:block;
    width:100%;
}
.main{
    margin:0 auto;
    min-width:1540px;
}
.content{
    overflow:hidden;
    margin-top:252px;
}
.content-left{
    float: left;
    width:25%;
    margin-left:5%;
}
.nav-fix{
    background:#242424;
    padding-bottom:6px;
    width:360px;
    position:absolute;
    float:left;
}
.nav-fix.fixed{
    position:fixed;
    top:150px;
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
.nav-fix ul li h4.active{
    background-color:#69cfc1;
    color:#fff;
}
.nav-fix dl{
    padding:34px 0 9px;
    display:none;
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

.nav-fix dl dd:hover a{
    color:#fff;
    background:url(../../assets/img/second/j-p3h.png) left center no-repeat;
    background-size: 3px 3px;
}
.nav-fix dl.active{
    display:block;
}
</style>

