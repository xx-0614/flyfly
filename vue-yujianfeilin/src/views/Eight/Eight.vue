<template>
    <div>
        <div class="ban">
        <img src="../../assets/img/eight/ban-h2.jpg" alt="">
    </div>
    <div class="main">
        <div class="m-hs2">
            <ul class="ul-tab">
                <li :class="{on:isOn1}">
                    <router-link to=""  @click.native="toggle">最近评价</router-link>
                </li>
                <li :class="{on:isOn2}">
                    <router-link to=""  @click.native="toggle">全部评价</router-link>
                </li>
            </ul>
            <div class="wp2">
                <div class="tabh1">
                    <ul class="ul-h3" v-if="isOn1">
                        <li class="myfancy" v-for="(item,i) of comment2" :key="i">
                            <a href="javascript:;">
                                <div class="pic">
                                    <img :src="require(`../../assets/${item.img}`)" alt="">
                                </div>
                                <div class="txt">
                                    <h3>{{item.title}}</h3>
                                    <p>{{item.dates}}</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <ul class="ul-h3" v-else>
                        <li class="myfancy" v-for="(item,i) of comment" :key="i">
                            <a href="javascript:;">
                                <div class="pic">
                                    <img :src="require(`../../assets/${item.img}`)" alt="">
                                </div>
                                <div class="txt">
                                    <h3>{{item.title}}</h3>
                                    <p>{{item.dates}}</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            comment:[],
            comment2:[],
            isOn1:true,
            isOn2:false
        }
    },
    methods:{
        loadMore(){
            this.axios.get("Eight").then(result=>{
                // console.log(result.data)
                this.comment=result.data;
                this.comment2=result.data.slice(0,12)
            })
        },
        toggle(){
            this.isOn1=!this.isOn1;
            this.isOn2=!this.isOn2;
        }
    },
    created(){
        this.loadMore();
    }
}
</script>
<style scoped>
@import "../../assets/common.css";

.ban{
    overflow:hidden;
}
.ban img{
    display:block;
    width:100%;
}
ul {
    list-style: none;
}
li {
    display: list-item;
}
.ul-tab{
    background-color:#fff;
    height:97px;
    padding-top:55px;
    text-align:center;
}
.ul-tab li {
    display: inline-block;
    margin: 0 26px;
    padding-right: 11px;
}
.ul-tab li.on, .ul-tab li:hover {
    background: url(../../assets/img/eight/h3.png) right center no-repeat;
}

.ul-tab li a {
    color: #999;
    font-size: 18px;
    padding-bottom: 15px;
    line-height: 1.5em;
    font-family: Regular;
}
.ul-tab li.on a,.ul-tab li a:hover{
    border-bottom: 2px solid #69cfc1;
}

.m-hs2 .tabh1 {
    padding-top: 54px;
    overflow: hidden;
}
.ul-h3 li{
    float:left;
    width:25%;
    padding:39px;
    bottom:50px;
    border-bottom:1px solid #dedede;
}
.ul-h3 li .pic {
    float: left;
    width: 95px;
    height: 95px;
    border-radius: 50%;
    overflow: hidden;
    margin-right: 22px;
}

.ul-h3 li .pic img {
    display: block;
    width: 100%;
    height: 100%;
}

.m-hs2  .ul-h3{
    margin-bottom:21px;
}
.ul-h3{
    overflow:hidden;
    margin:0 16px;
}
.pages ul {
    display: inline-block;
    text-align: center;
}

.pages ul li{
    margin:0 14px;
    float:left;
}
.wp2 {
    width: auto;
    padding: 0 10px;
}
.ul-h3 li .txt h3 {
    display: block;
    display: -webkit-box;
    overflow: hidden;
    text-overflow: ellipsis;
    word-break: break-all;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
    font-size: 16px;
    color: #414141;
    font-weight: 400;
    margin-bottom: 15px;
    font-family: Regular;
    transition: .3s;
}
h3:hover{
    color:#69cfc1 !important;
}
.ul-h3 li .txt{
    max-width:160px;
    overflow:hidden;
    color:#a2a2a2;
    padding-top:12px;
}


</style>