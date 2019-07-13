<template>
    <div>
        <div class="three-header">
            <img src="../assets/img/three/ban-h1.jpg">
        </div>
        <div class="three-text">
            <h3> RECORD LOVE TOUR AROUND</h3>
            <div class="three-text-bg"></div>
            <h4>菲林环游记</h4>
        </div>
        <div class="three-bodyer">
            <mt-tabbar>
               <mt-tab-item  class="three-border1">全部</mt-tab-item>
               <mt-tab-item  class="three-border1">三亚</mt-tab-item>
               <mt-tab-item  class="three-border1">丽江</mt-tab-item>
               <mt-tab-item  class="three-border1">大理</mt-tab-item>
               <mt-tab-item  class="three-border1">青海</mt-tab-item>
               <mt-tab-item  class="three-border3">香格里拉</mt-tab-item>
               <mt-tab-item  class="three-border2">塞班岛</mt-tab-item>
               <mt-tab-item  class="three-border2">巴厘岛</mt-tab-item>
               <mt-tab-item  class="three-border1">法国</mt-tab-item>
               <mt-tab-item  class="three-border2">土耳其</mt-tab-item>
            </mt-tabbar>
        </div>
    </div>
</template>
<script>
export default {
      
}
</script>
<style scope>
    .three-header>img{
       width:100%;
       height:751px;
    }
    .three-text{
        font-size:36px;
         padding-top:70px;
         margin-bottom:105px;
    }
    .three-text>h3,.three-text>h4{
        color: #2f2f2f;
         font-weight:400;
        
    }
    .three-text-bg{
        width:100%;
        height:3.98px;
        background:url("../assets/img/three/h2.png") no-repeat;
        margin-top:22px;
        margin-bottom:28px;
    }
    .three-bodyer{
        margin-top:50px;
        font-size:16px;
    }
    .three-border1{ 
        display:inline-block;    
        width:84px;
        height:41.99px;
        line-height:41.99px;
        border:1px solid #d9d9d9;       
        color:#7a7a7a;
        margin-left:10px;     
    }
    .three-border2{ 
        display:inline-block;    
        width:100px;
        height:41.99px;
        line-height:41.99px;
        border:1px solid #d9d9d9;
        color:#7a7a7a;
        margin-left:10px;      
    }
    .three-border3{ 
        display:inline-block;    
        width:116px;
        height:41.99px;
        line-height:41.99px;
        border:1px solid #d9d9d9;
        color:#7a7a7a; 
        margin-left:10px;     
    }
</style>
