<template>
   <div class="city">
       <div class="title">
           <ul @click="active">
               <li>
                   <router-link to="/" class="active">热拍地区</router-link>
               </li>
               <li>
                   <router-link to="/Three">全部地区</router-link>
               </li>
           </ul>
       </div>
       <div class="city-content">
           <div class="content-img">
               <div v-for="(item,i) of city" :key="i"> 
                   <router-link to="/Three" class="img_hover">
                        <div class="pic">
                            <img :src="require(`../../assets/${item.img}`)">
                            <div class="cover">
                            <span>
                                <i></i>
                            </span>
                        </div>
                        </div>
                        <h3>
                            {{item.title}}
                            <p>{{item.details}}</p>
                        </h3>
                   </router-link>
               </div>
           </div>
       </div>
    </div> 
</template>
<script>
export default {
    data(){
        return{}
    },
    methods:{
        active(e){
            var a=document.querySelectorAll(".title>ul>li a");
            console.log(a)
            for(var i=0;i<a.length;i++){
                if(e.target.nodeName=="A"){
                    a[i].className="";
                }
                e.target.className="active";
            }
        },
    },
    props:["city"],
}
</script>
<style scoped>
    .city{
        overflow:hidden;
        padding-bottom:124px;
        width:100%;
    }
    .title{
        padding-top:41px;
        background-color:#fff;
        overflow:hidden;
    }
    .title ul{
        list-style:none;
        overflow:hidden;
        text-align:center;
    }
    .title ul li{
        display:inline-block;
        vertical-align: middle;
        margin:0 32px;
    }
    .title ul li a{
        display:block;
        font-size:18px;
        color:#999;
        line-height:3.3em;
        position:relative;
    }
    .title ul li a::before{
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
    .title ul li a::after{
        content:"";
        width:71px;
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
    .title ul li a:hover{
        color:#000;
    }
    .title ul li a:hover::before,
    .title ul li a:hover::after{
        opacity:1;
    }
    .title ul li a.active{
        color:#000;
    }
    .title ul li a.active::before{
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
    .title ul li a.active::after{
        content:"";
        width:71px;
        height:2px;
        background:#60cfc1;
        position:absolute;
        left:0;
        right:0;
        bottom:0;
        margin:0 auto;
        opacity:1;
    }
    .city-content{
        margin:0 auto;
        padding:0 10px;
        width:1540px;
    }
    .content-img{
        overflow:hidden;
        margin-top:88px;
        display:flex;
        flex-wrap: wrap;
    }
    .content-img>div{
        width:33.33%;
        padding:0 6px;
        margin-bottom:20px;
    }
    .content-img>div a{
        display:block;
    }
    .pic{
        position:relative;
        height:300px;
    }
    .pic img{
        display:block;
        width:100%;
        height:100%;
        position:absolute;
        top:0;
        left:0;
    }
    .cover{
        position:absolute;
        top:0;
        left:0;
        bottom:0;
        right:0;
        background:rgba(0,0,0,0);
        opacity:0;
        transition:.3s;
    }
    .cover span{
        display:block;
        width:60px;
        height:60px;
        border-radius:50%;
        background-color:#69cfc1;
        position:relative;
        top:-60px;
        left:0;
        right:0;
        margin:0 auto;
        transition:.5s;
    }
    .cover span i{
        display:block;
        width:30px;
        height:30px;
        background:url(../../assets/img/index/iconq11.png) center center no-repeat;
        background-size:cover;
        position:absolute;
        top:50%;
        left:50%;
        margin-left:-15px;
        margin-top:-15px;
        transform-origin:center center;
        transition:.5s;
    }
    .img_hover h3{
        text-align:center;
        font-size:20px;
        color:#909090;
        line-height:1.45em;
        font-weight:400;
        font-family:Medium;
        padding:23px 10px;
        overflow:hidden;
        transition:.3s;
    }
    .img_hover h3 p{
        font-size:8px;
        line-height:1.5em;
        text-transform:uppercase;
        margin-top:1px;
    }
    .img_hover:hover .cover{
        background:rgba(0,0,0,0.5);
        opacity:1;
    }
    .img_hover:hover span{
        top:50%;
        transform:translateY(-50%);
    }
    .img_hover:hover span:hover i{
        transform:rotate(180deg);
    }
    .img_hover:hover h3{
        background:#69cfc1;
        color:#fff;
    }
</style>

