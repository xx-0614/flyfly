<template>
    <div class="activity">
        <div class="title">
            <h3>活动推广</h3>
            <div class="slick-slider">
                <div class="slick-list">
                    <div class="slick-track">
                        <div class="slick-item" v-for="(item,i) of activity" :key="i">
                            <p>{{item.title}}</p>
                            <a href="javascript:;" @mouseover="enter" @mouseout="leave" @click="toFive">查看更多
                                <i :class="{active:isActive}" ></i>
                            </a>
                        </div>
                        <div class="slick-item">
                            <p>六周年店庆活动5866</p>
                            <a href="javascript:;" @mouseover="enter" @mouseout="leave"  @click="toFive">查看更多
                                <i :class="{active:isActive}"></i>
                            </a>
                        </div>
                        
                        
                    </div>
                </div>
            </div>
        </div>
        <ul class="imgcontent" >
            <li v-for="(item,i) of activity" :key="i">
                <router-link to="/Five" @click.native="toFive"> 
                    <div class="pic">
                        <img :src="require(`../../assets/${item.img}`)">
                    </div>
                    <div class="txt">
                        <h3>{{item.title}}</h3>
                        <p>{{item.details}}</p>
                    </div>
                </router-link>
            </li>
        </ul>
        
    </div>
</template>
<script>
export default {
    data(){
        return {
            isActive:false,
            active:false
        }
    },
    props:["activity"],
    methods:{
        // 字幕滚动
        scrollUp(){
            var i=0;
            setInterval(function(){
                i++;
                var div=document.querySelector(".slick-track");
                if(i>2){
                    setTimeout(function(){
                        i=0;
                        div.style.marginTop=0;
                        div.style.transition="0s" 
                    },1000)
                }else{
                    div.style.transition="1s";
                }
                div.style.marginTop=-82*i+"px";
            },2000)
        },

        //鼠标移入移出
        enter(){
            this.isActive=true;
        },
        leave(){
            this.isActive=false;
        },
        //点击跳转页面
        toFive(){
            this.$router.push("/Five");
            scrollTo(0,0);
        }
    },
    mounted(){
        window.addEventListener('load', this.scrollUp)
    },
    destroyed(){
        window.removeEventListener('load', this.scrollUp);
    },

}
</script>
<style scoped>
    .activity{
        max-width:1540px;
        overflow:hidden;
        margin:0 auto;
        margin-bottom:100px;
        padding:0 10px;
    }
    .title{
        overflow:hidden;
        background:#fff;
        padding:0 68px;
        font-size:18px;
        color:#000;
        font-family:Light;
        line-height:80px;
    }
    .title h3{
        float:left;
        line-height:80px;
        font-size:18px;
        color:#2e2d2d;
        font-family:Heavy;
        margin-right:83px;
        overflow:hidden;
    }
    .slick-slider{
        position:relative;
        display:block;
    }
    .slick-list{
        height:82px;
        position:relative;
        display:block;
        overflow:hidden;
        margin:0;
        padding:0;
    }
    .slick-track{
        height:410px;
        margin-top:0;
        transition:.5s;
    }
    .slick-item{
        height:82px;
    }
    .slick-item p{
       overflow:hidden;
       white-space:nowrap;
       text-overflow:ellipsis; 
       float:left;
    }
    .slick-item a{
        display:block;
        float:right;
        font-size:18px;
        color:#2e2d2d;
        line-height:80px;
        font-family:Heavy;
        font-weight:700;
        overflow:hidden;
        transition:.5s;
    }
    .slick-item a i{
        display:inline-block;
        vertical-align:middle;
        width:15px;
        height:15px;
        background:url(../../assets/img/index/iconq12.png) center center no-repeat;
        background-size:cover;
        margin-top:-2px;
        transition:.5s;
    }
    .slick-item a i.active{
        background:url(../../assets/img/index/iconq12-1.png) center center no-repeat;
    }
    .slick-item a:hover{
        color:#69cfc1;
    }
    .imgcontent{
        margin:84px 0 30px;
        background:#fff;
        padding:30px 20px 23px;
        list-style: none;
    }
    .imgcontent::after{
        content:"";
        display:block;
        clear:both;
    }
    .imgcontent li{
        float:left;
        width:33.3%;
        padding:0 15px;
        margin-bottom:10px;
    }
    .imgcontent li a{
        display:block;
    }
    .imgcontent li a .pic{
       position:relative;
       height:0;
       padding-top:100%;
       overflow:hidden;
       margin-bottom:22px;
    }
    .imgcontent .pic img{
        display:block;
        width:100%;
        height:100%;
        position:absolute;
        top:0;
        left:0;
        transition:.5s;
    }

    
    .txt{
        overflow:hidden;
        font-size:14px;
        color:#000;
        line-height:1.5em;
    }
    .txt h3{
        font-size:18px;
        color:#000;
        font-weight:400;
        line-height:1.17em;
        margin-bottom:3px;
        overflow:hidden;
        white-space:nowrap;
        text-overflow: ellipsis;
        transition:.5s;
    }
    .imgcontent a:hover img{
        transform:scale(1.1)
    }
    .imgcontent a:hover h3{
        color:#69cfc1;
    }
</style>

