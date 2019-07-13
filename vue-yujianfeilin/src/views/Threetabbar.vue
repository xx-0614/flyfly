<template>
  <div class="threenav">
        <el-tabs v-model="activeName" @tab-click="handleClick">
            <el-tab-pane label="全部" name="first">
              
            </el-tab-pane>
            <el-tab-pane label="三亚" name="second">配置管理</el-tab-pane>
            <el-tab-pane label="丽江" name="third">角色管理</el-tab-pane>
            <el-tab-pane label="大理" name="fourth">定时任务补偿</el-tab-pane>
            <el-tab-pane label="青海" name="five">sheng</el-tab-pane>
            <el-tab-pane label="香格里拉" name="six">配置管理</el-tab-pane>
            <el-tab-pane label="塞班岛" name="seven">角色管理</el-tab-pane>
            <el-tab-pane label="巴厘岛" name="eight">定时任务补偿</el-tab-pane>
            <el-tab-pane label="法国" name="nine">sheng</el-tab-pane>
            <el-tab-pane label="土耳其" name="ten">配置管理</el-tab-pane>
        </el-tabs>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        activeName: 'second'
      };
    },
    methods: {
      handleClick(tab, event) {
        console.log(tab, event);
      }
    }
  };
</script>
<style scope>
    .threenav{
        margin-top:120px;
        text-align:center;
    }
    /*导航栏 */
    .el-tabs__nav{
        width:100%;       
    }
    .el-tabs--top .el-tabs__item.is-top:nth-child(2) {
     padding-left: 20px !important;
    }
    .el-tabs--top .el-tabs__item.is-top:last-child {
     padding-right: 20px !important; 
   }
    .el-tabs__item{
        border:1px solid #d9d9d9;
        margin-left:10px;
        padding:0 25px !important;
        border-radius: 3px;
        color: #7a7a7a !important;
        font-size: 16px;
    }
    .el-tabs__item:hover{   
      background-color: #69cfc1;
      color: #fff !important;
      border-color: #69cfc1;
    }
    .el-tabs__item.is-active {
       background-color: #69cfc1;
      color: #fff !important;
      border-color: #69cfc1;
    }
    .el-tabs__nav-wrap::after{
        height:0 !important;
    }
    .el-tabs__active-bar{
        background-color:transparent !important;
    }

</style>