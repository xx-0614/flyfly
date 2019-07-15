<template>
    <div class="activity">
        <div class="title">
            <h3>活动推广</h3>
            <div class="slick-slider">
                <div class="slick-list">
                    <div class="slick-track">
                        <div class="slick-item">
                            <p>六周年店庆活动5866</p>
                            <a href="javascript:;">查看更多
                                <i></i>
                            </a>
                        </div>
                        <div class="slick-item">
                            <p>六周年店庆活动6866</p>
                            <a href="javascript:;">查看更多
                                <i></i>
                            </a>
                        </div>
                        <div class="slick-item">
                            <p>六周年店庆活动8866</p>
                            <a href="javascript:;">查看更多
                                <i></i>
                            </a>
                        </div>
                        <div class="slick-item">
                            <p>六周年店庆活动5866</p>
                            <a href="javascript:;">查看更多
                                <i></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {}
    },
    methods:{
        slick(){
            let i=0;
            
            setInterval(()=>{
                var div=document.querySelector(".slick-track");
                if(i>4){
                    div.style.transition=0;
                    div.style.marginTop=0;
                    i=0
                }else{
                    div.style.marginTop=-82*i+"px";
                }
                i++;
            },2000)
            
        }
    },
    created(){
        this.slick();
    }
}
</script>
<style scoped>
    .activity{
        overflow:hidden;
        margin:0 auto;
        margin-bottom:100px;
        width:1540px;
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
        margin-right:84px;
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
        width:1063px;
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
        transition:.3s;
    }
    .slick-item a i{
        display:inline-block;
        vertical-align:middle;
        width:15px;
        height:15px;
        background:url(../../assets/img/index/iconq12.png) center center no-repeat;
        background-size:cover;
        margin-top:-2px;
        transition:.3s;
    }
</style>

