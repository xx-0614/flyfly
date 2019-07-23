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
                                <dl :class="{active:currentIndex[0].isActive}"  @click="changeOn">
                                    <dd>
                                        <router-link to="" @click.native="changeSelected(0)" class="active">ins生活</router-link>
                                    </dd>
                                    <dd>
                                        <router-link to="" @click.native="changeSelected(1)">ins时尚</router-link>
                                    </dd>
                                    <dd>
                                        <router-link to="" @click.native="changeSelected(2)">ins优雅</router-link>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <h4 @click="change(1)" :class="{active:currentIndex[1].isActive}">小情新系列</h4>
                                <dl :class="{active:currentIndex[1].isActive}" @click="changeOn">
                                    <dd>
                                        <router-link to="" @click.native="changeSelected(1)">文艺清新</router-link>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <h4 @click="change(2)" :class="{active:currentIndex[2].isActive}">国潮系列</h4>
                                <dl :class="{active:currentIndex[2].isActive}" @click="changeOn">
                                    <dd>
                                        <router-link to="" @click.native="changeSelected(0)">国潮客片</router-link>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <h4 @click="change(3)" :class="{active:currentIndex[3].isActive}">造星系列</h4>
                                <dl :class="{active:currentIndex[3].isActive}" @click="changeOn">
                                    <dd>
                                        <router-link to="" @click.native="changeSelected(2)">素人打造</router-link>
                                    </dd>
                                </dl>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="content-right">
                    <div class="img" v-if="indexList[0].isSelected">
                        <img :src="require(`../../assets/${item.img}`)" alt="" v-for="(item,i) of listLife" :key="i">
                    </div>
                    <div class="img" v-else-if="indexList[1].isSelected">
                        <img :src="require(`../../assets/${item.img}`)" alt="" v-for="(item,i) of listFashion" :key="i">
                    </div>
                    <div class="img" v-else>
                        <img :src="require(`../../assets/${item.img}`)" alt="" v-for="(item,i) of listGraceful" :key="i">
                    </div>

                    <router-link to="/three" @click.native="toThree">MORE</router-link>
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
            className:"",
            list:[],
            listLife:[],
            listFashion:[],
            listGraceful:[],
            indexList:[
                {isSelected:true},
                {isSelected:false},
                {isSelected:false}
            ],
          
        }
    },
    methods:{
        //手风琴
       change(n){
           for(var i=0;i<this.currentIndex.length;i++){
               if(i==n){
                    this.currentIndex[i].isActive=true;
               }else{
                   this.currentIndex[i].isActive=false;
               }
           }
       },
       //鼠标滚动控制左侧是否悬浮
       scrollFixed(){
           var fixed=document.querySelector(".content-left>div");
           if(window.scrollY>680&& window.scrollY<document.body.scrollHeight-1500){
               fixed.className="nav-fix fixed"
           }else{
               fixed.className="nav-fix"
           }
       },
       //发送请求获取数据
       loadMore(){
           this.axios.get("second").then(result=>{
               for(var item of result.data){
                   if(item.title=="ins生活"){
                       this.listLife.push(item);
                   }else if(item.title=="ins时尚"){
                       this.listFashion.push(item);
                   }else{
                       this.listGraceful.push(item);
                   }
               }
           })
       },
       //动态获取图片内容
       changeSelected(n){
           for(var i=0;i<this.indexList.length;i++){
               if(i==n){
                   this.indexList[i].isSelected=true;
               }else{
                   this.indexList[i].isSelected=false;
               }
           }
       },
       //字体样式切换
       changeOn(e){
           var as=document.querySelectorAll(".nav-fix dd a")
            if(e.target.nodeName=="A"){
                for(var a of as){
                   a.className=""
               }
            e.target.className="active"
           }
       },
       toThree(){
           scrollTo(0,0);
       }
    },
    created(){
        this.loadMore();
    },
    mounted(){
        window.addEventListener('scroll', this.scrollFixed)
    },
    destroyed() {
         window.removeEventListener('scroll', this.scrollFixed)
    },
}
</script>
<style scoped>
@import "../../assets/common.css";

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
    text-transform: uppercase;
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
    transition:all .3s;
}
.nav-fix dl dd a.active{
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
.content-right{
    width:60%;
    float:right;
    overflow:hidden;
    margin-left:30px;
    margin-right:80px;
    
}

.content-right .img img{
    width:100%;
    margin:10px;
    display:inline-block;
}
.content-right a{
    display:block;
    margin:30px auto;
    width:213px;
    height:50px;
    line-height:46px;
    border:2px solid #fff;
    text-align:center;
    background:#1d1d1d;
    font-size:16px;
    font-weight:400;
    color:#fff;
    transition:all .5s;
}
.content-right a:hover{
    color:#000;
    background:#fff;
    border:2px solid #000;
}

</style>

