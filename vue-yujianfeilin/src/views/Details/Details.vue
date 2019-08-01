<template>
    <div class="detail">
        <div class="banner">
            <el-carousel  :interval="3000" height="750px">
                <el-carousel-item v-for="(item,index) in banner" :key="index" >
                    <img :src="require(`../../assets/${item.img}`)">
                </el-carousel-item>
            </el-carousel>  
        </div>
        <div class="detail_main">
            <div class="scroll-fix" v-for="(t,i) of txt" :key="'txt-'+i">
            <div class="detail_title" >
                <p>
                    <i></i>
                    {{t.title}}
                </p>
            </div>
            <div class="detail_text">
                <p>{{t.place}}</p>
                <p>-----------------------------</p>
                <p v-for="(d,index) of details" :key="index">{{d.details}}</p>
               
            </div>
        </div>
        <div class="detail_pic" v-for="(p,i) of pic" :key="'pic-'+i">
             <img :src="require(`../../assets/${p.img}`)" alt="">
        </div>
        </div>
        
        
    </div>
</template>
<script>
export default {
    data(){
        return{
            pic:[],
            txt:[],
            details:[],
            banner:[],
            className:{}
        }
    },
    props:["pid"],
    methods:{
        load(){
            this.axios.get("details",{
                params:{
                    pid:this.pid
                }
            }).then(res=>{
                // console.log(res)
                this.pic=res.data.pic;
                // console.log(this.pic);
                this.txt=res.data.txt;
                // console.log(this.txt);
                this.details=res.data.details;
                // console.log(this.details)
                this.banner=res.data.banner;
                // console.log(this.banner)
            }
            )
        },
        //鼠标滚动控制左侧是否悬浮
       scrollFixed(){
           var fixed=document.querySelector(".detail_main>div:first-child");
           if(window.scrollY>680&& window.scrollY<document.body.scrollHeight-1500){
               fixed.className="scroll-fix fixed"
           }else{
               fixed.className="scroll-fix"
           }
       },
    },
    created(){
        this.load();
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

.detail{
    width:100%;
    height:100%;
}
.banner,.detail_main{
    margin:0 auto;
    width:1440px;
}
.banner{
    margin-top:130px;
    margin-bottom:100px;
}
.detail_main::after{
    content:'';
    display:block;
    clear:both;
}
.scroll-fix{
    width:30%;
    float:left;
    position:absolute;
    
}
.scroll-fix.fixed{
    position:fixed;
    top:150px;
}
.detail_title{
    overflow:hidden;
    border-bottom:1px solid #434343;
    padding-bottom:10px;
    margin-bottom:44px;
}
.detail_title p{
    font-size:20px;
    color:#363636;
}
.detail_title i{
    display:inline-block;
    vertical-align: middle;
    width:16px;
    height:20px;
    background:url(../../assets/img/index/h8.png) center center no-repeat;
}
.detail_text p{
    font-family: Regular;
    font-size: 20px;
    color: #909090;
    line-height: 26px;
}
.detail_text p:not(:first-child){
    line-height: 40px;
}
.detail_pic{
    width:60%;
    float:right;
}
.detail_pic img{
    margin:20px;
    width:100%;
}
</style>


