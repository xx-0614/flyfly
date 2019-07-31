<template>
    <div class="detail">
        <div class="main">
            <div class="scroll-fix" v-for="(item,i) of txt" :key="i">
            <div class="title">
                <p>
                    <i></i>
                    {{item.title}}
                </p>
            </div>
            <div class="text">
                <p>{{item.place}}</p>
                <p>-----------------------------</p>
                <p v-for="(item,i) of details" :key="i">{{item.details}}</p>
               
            </div>
        </div>
        <div class="pic" v-for="(item,i) of pic" :key="i">
             <img :src="require(`../../assets/${item.img}`)" alt="">
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
            details:[]
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
                this.pic=res.data.pic;
                console.log(this.pic);
                this.txt=res.data.txt;
                console.log(this.txt);
                this.details=res.data.details;
                console.log(this.details)
            }
            )
        }
    },
    created(){
        this.load();
    }
}
</script>
<style scoped>
@import "../../assets/common.css";

.detail{
    width:100%;
    height:100%;
}
.main{
    padding:0 50px;
}
.main::after{
    content:'';
    display:block;
    clear:both;
}
.scroll-fix{
    width:30%;
    float:left;
}
.title{
    overflow:hidden;
    border-bottom:1px solid #434343;
    padding-bottom:10px;
    margin-bottom:44px;
}
.title p{
    font-size:20px;
    color:#363636;
}
.title i{
    display:inline-block;
    vertical-align: middle;
    width:16px;
    height:20px;
    background:url(../../assets/img/index/h8.png) center center no-repeat;
}
.text p{
    font-family: Regular;
    font-size: 20px;
    color: #909090;
    line-height: 26px;
}
.text p:not(:first-child){
    line-height: 40px;
}
.pic{
    width:60%;
    float:right;
}
.pic img{
    margin:20px;
}
</style>


