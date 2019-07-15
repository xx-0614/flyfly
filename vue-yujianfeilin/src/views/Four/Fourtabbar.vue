<template>
  <div class="fourtabbar-nav">
        <el-tabs v-model="activeName">
            <el-tab-pane label="全部" name="first">
                <ul class="fourtabbar-ul">
                    <fourtab1 v-for="(item ,i) of city" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.subtitle"
                        :dates="item.dates"
                    ></fourtab1>
                </ul>
            </el-tab-pane>
            <el-tab-pane label="三亚" name="second">
                <ul class="fourtabbar-ul">          
                    <fourtab2 v-for="(item,i) of sanya" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.subtitle"
                        :dates="item.dates"
                    ></fourtab2>
               </ul>
            </el-tab-pane>
            <el-tab-pane label="丽江" name="third">
                <ul class="fourtabbar-ul">          
                    <fourtab2 v-for="(item,i) of lijiang" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.subtitle"
                        :dates="item.dates"
                    ></fourtab2>
               </ul>
            </el-tab-pane>
            <el-tab-pane label="大理" name="fourth">
                 <ul class="fourtabbar-ul">          
                    <fourtab2 v-for="(item,i) of sanya" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.subtitle"
                        :dates="item.dates"
                    ></fourtab2>
               </ul>
            </el-tab-pane>
            <el-tab-pane label="青海" name="five">
                 <ul class="fourtabbar-ul">          
                    <fourtab2 v-for="(item,i) of lijiang" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.subtitle"
                        :dates="item.dates"
                    ></fourtab2>
               </ul>
            </el-tab-pane>
            <el-tab-pane label="香格里拉" name="six">
                 <ul class="fourtabbar-ul">          
                    <fourtab2 v-for="(item,i) of sanya" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.subtitle"
                        :dates="item.dates"
                    ></fourtab2>
               </ul>
            </el-tab-pane>
            <el-tab-pane label="塞班岛" name="seven">
                  <ul class="fourtabbar-ul">          
                    <fourtab2 v-for="(item,i) of lijiang" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.subtitle"
                        :dates="item.dates"
                    ></fourtab2>
               </ul>
            </el-tab-pane>
            <el-tab-pane label="巴厘岛" name="eight">
                <ul class="fourtabbar-ul">          
                    <fourtab2 v-for="(item,i) of sanya" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.subtitle"
                        :dates="item.dates"
                    ></fourtab2>
               </ul>
            </el-tab-pane>
            <el-tab-pane label="法国" name="nine">
                 <ul class="fourtabbar-ul">          
                    <fourtab2 v-for="(item,i) of lijiang" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.subtitle"
                        :dates="item.dates"
                    ></fourtab2>
               </ul>
            </el-tab-pane>
            <el-tab-pane label="土耳其" name="ten">
                <ul class="fourtabbar-ul">          
                    <fourtab2 v-for="(item,i) of sanya" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.subtitle"
                        :dates="item.dates"
                    ></fourtab2>
               </ul>
            </el-tab-pane>
        </el-tabs>
  </div>
</template>
<script>
import Fourtab1 from './Fourtab1.vue';
import Fourtab2 from './Fourtab2.vue';
  export default {
    data() {
      return {
        activeName: 'first',
        city:[],
        sanya:[],
        lijiang:[]
      };
    },
    components:{
        "fourtab1":Fourtab1,
        "fourtab2":Fourtab2
    },
    methods: {        
        load(){
             this.axios.get("http://127.0.0.1:3000/four").then(result=>{
                   console.log(result);
                   this.city=result.data
                   console.log(this.city)
                   var n=0;
                   var m=0;
                   for(var i=0 ;i<result.data.length;i++){                    
                          if(result.data[i].title=="三亚"){
                                 this.sanya[n]=result.data[i];
                                 n++;
                        }else 
                          if(result.data[i].title=="丽江"){
                                 this.lijiang[m]=result.data[i];
                                  m++;
                        }                                           
                     }
                     console.log(this.sanya,this.lijiang)
                 })
              } ,
     },
      created(){
         this.load();
          },
  };
</script>
<style >
    .fourtabbar-nav{
        text-align:center;
        width:1355px;
        margin:100px auto;     
    }
    .fourtabbar-ul{
       list-style:none;
        display:flex;
        flex-wrap:wrap;
    }
    /*导航栏 */
    .el-tabs__nav{
        width:100%
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
     .el-icon-arrow-left:before {
    content: "" !important;
   }
   .el-icon-arrow-right:before {
    content: "" !important;
  }

</style>