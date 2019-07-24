<template>
   <div>
    <div>
        <div class="ban">
           <img src="../../assets/img/six/ban-h4.jpg" alt="">
        </div>
        <div class="main">
            <div class="m-hs2 hs">
                <ul class="ul-tab">
                    <li>
                        <router-link to="" :class="{active:isActive1}" @click.native="toggle">微电影</router-link>
                    </li>
                    <li>
                        <router-link to="" :class="{active:isActive2}" @click.native="toggle">影像花絮</router-link>
                    </li>
                </ul>
                <div class="wp2">
                    <div class="tabh1">
                        <div class="box">
                            <ul class="ul-hs1" v-if="isActive1">
                                <li class="video_item" v-for="(item,i) of film" :key="i">
                                    <div class="pic">
                                        <img :src="require(`../../assets/${item.img}`)">
                                        <div class="bg" @click="open()">
                                            <div class="video" >
                                                <router-link  to="" class="item_link"></router-link>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="txt">
                                        <h3><router-link to="">{{item.subtitle}}</router-link></h3>
                                        <p>{{item.details}}</p>
                                    </div>
                                    <div class="item_info">
                                       <p class="title ellipsis">{{item.subtitle}}</p>
                                       <p class="subtitle ellipsis">{{item.details}}</p>
                                    </div>
                                </li>
                            </ul>
                    
                            <ul class="ul-hs1" v-else>
                                <li class="video_item" v-for="(item,i) of film2" :key="i">
                                    <div class="pic">
                                       <img :src="require(`../../assets/${item.img}`)">
                                       <div class="bg">
                                           <div class="video" >
                                               <router-link  to="" class="item_link"></router-link>
                                           </div>
                                       </div>
                                    </div>
                                    <div class="txt">
                                       <h3><router-link to="">{{item.subtitle}}</router-link></h3>
                                        <p>{{item.details}}</p>
                                    </div>
                                    <div class="item_info">
                                       <p class="title ellipsis">{{item.subtitle}}</p>
                                       <p class="subtitle ellipsis">{{item.details}}</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pages">
                       <ul></ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="six-none" id="dv" @click.self="close()">
         <div class="six-video">
             <video  src="../../assets/img/six/PeHAdi21vjqd1QJys6j@@hdregop.mp4" id="v3" controls></video>
             <div></div>
         </div>
    </div>
   </div>
</template>
<script>
export default {
    data(){
        return{
            isActive1:true,
            isActive2:false,
            film:[],
            film2:[],
        }
    },
    methods:{
        open(){
            var  dv=document.getElementById("dv");
            var  v3=document.getElementById("v3");
            dv.className="";
            if(dv.className==""){
               dv.className="six-zhe"
             }
              v3.play();

        },
<<<<<<< HEAD
        close(e){
            // e.preventDefault();
=======
        close(){
>>>>>>> 4b3f99991852537bd9eecb6b01c10cdecc0a3ef0
            var  dv=document.getElementById("dv");
            var  v3=document.getElementById("v3");
            dv.className="six-none";          
        },
        //切换按钮
        toggle(){
            this.isActive1=!this.isActive1;
            this.isActive2=!this.isActive2;
            this.axios.get("six").then(result=>{
              this.film2=result.data.slice(6);
            })
        },
        loadMore(){
            this.axios.get("six").then(result=>{
              this.film=result.data.slice(0,6);
            })
        }
    },
    created(){
        this.loadMore();
    }
}
</script>
<style scoped>
@import "../../assets/common.css";
.six-zhe{
    position:fixed;
    top:0;
    width:100%;
    height:1000px;
    background-color:rgba(68, 68, 68,0.6);
    opacity:1;
}
.six-video{
    width:980px;
    height:640px;
    margin:160px auto;
    background-color:rgb(68, 68, 68);
     padding:13px 13px;
}
.six-video>video{
    width:954px;
    height:541px;
}
.six-none{
    display:none;
}


.bd-hs{
    padding-top:100px;
}
.ban{
    overflow:hidden;
}
.ban img{
    display:block;
    width:100%;
}

.ul-tab{
    background-color:#fff;
    height:94px;
    padding-top:35px;
    text-align:center;
    list-style:none;
}
.ul-tab li{
    display:inline-block;
    margin:0 26px;
    padding-right:11px;
}
.ul-tab li a{
    display:block;
    font-size:18px;
    color:#999;
    line-height:3.3em;
    position:relative;
}
.ul-tab li a::before{
    content:"";
    width:10px;
    height:10px;
    background:url(../../assets/img/index/iconq10.png) center center no-repeat;
    position:absolute;
    right:-12px;
    top:50%;
    margin-top:-5px;
    opacity:0;
    transition:.3s;
}
.ul-tab li a::after{
    content:"";
    height:2px;
    background:#60cfc1;
    position:absolute;
    left:0;
    right:0;
    bottom:0;
    margin:0 auto;
    opacity:0;
    transition:.3s;
}
.ul-tab li a:hover{
    color:#000;
}
.ul-tab li a:hover::before,
.ul-tab li a:hover::after{
    opacity:1;
}
.ul-tab li a.active{
    color:#000;
}
.ul-tab li a.active::before{
    content:"";
    width:10px;
    height:10px;
    background:url(../../assets/img/index/iconq10.png) center center no-repeat;
    position:absolute;
    right:-12px;
    top:50%;
    margin-top:-5px;
    opacity:1;
}
.ul-tab li a.active::after{
    content:"";
    height:2px;
    background:#60cfc1;
    position:absolute;
    left:0;
    right:0;
    bottom:0;
    margin:0 auto;
    opacity:1;
}

.ul-hs1 li{
    overflow:hidden;
    padding:0 10px;
    float:left;
    width:33.33%;
    margin-bottom:40px;
}
.ul-hs1 li .pic{
    overflow:hidden;
    position:relative;
    padding-top:56.4%;
    height:0;
    margin-bottom:20px;
}
.ul-hs1 li .pic .bg{
    position:absolute;
    top:0;
    width:100%;
    height:100%;
    background: url(../../assets/img/six/h11.png) no-repeat;
    background-size: 100% 100%;
    opacity: 0;
}
.ul-hs1 li .pic .bg:hover{
    opacity:1;
}
.ul-hs1 li .pic img {
    position: absolute;
    top: 0;
    left: 0;
    display: block;
    width: 100%;
    height: 100%;
}
.ul-hs1 li .pic .bg a {
    display: block;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 68px;
    height: 68px;
    background: url(../../assets/img/six/h12_1.png) no-repeat;
}
.video_item:hover .txt h3>a{
    color:#60cfc1;
}
.m-hs2 .tabh1{
    padding-top:144px;
    overflow:hidden;
}
.wp2 {
    width: auto;
    padding: 0 10px;
}
.m-hs2 .tabh1 .box{
    margin:0 109px;
    overflow:hidden;
}
.ul-hs1{
    overflow:hidden;
    margin:0 -10px 69px;
}
.ul-hs1 li .txt {
    font-family: Medium;
    font-size: 12px;
    color: #909090;
    line-height: 29px;
}
.ul-hs1 li .txt h3 a {
    font-size: 18px;
    color: #909090;
    display: block;
    font-weight: 400;
}
.ul-hs1 li .txt p {
    line-height: 1.5;
}
.ul-hs1 .item_info {
    display: none;
}
.ellipsis {
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
    display: block;
}
.wp2{
    width:auto;
    padding:0 10px;
}
.bd-hs {
    padding-top: 100px;
}
.m-hs2.hs .pages{
    margin-bottom:228px;
}
.pages{
    overflow:hidden;
    text-align:center;
}
.pages ul{
    display:inline-block;
    text-align:center;
}
.wp{width:1540px;margin:0 auto}
.wp2{width:1410px;margin:0 auto;}
.h50{height:50px;clear:both;overflow:hidden}
.h100{height:100px;clear:both;overflow:hidden}
.item_link{
    position: relative;
    display: block;
    width: 100%;
    -ms-transition: .3s;
    -moz-transition: .3s;
    -webkit-transition: .3s;
    -o-transition: .3s;
    transition: .3s;
}

</style>