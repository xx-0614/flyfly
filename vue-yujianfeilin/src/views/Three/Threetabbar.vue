<template>
  <div class="threenav">
        <el-tabs v-model="activeName" >
            <el-tab-pane label="全部" name="first">
               <ul class="threetabbar-ul">
                 <threetab2  v-for="(item,i) of lijiang" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.subtitle"
                  :dates="item.dates"
                 ></threetab2>          
              </ul>
            </el-tab-pane>
            <el-tab-pane label="三亚" name="second">
              <ul class="threetabbar-ul">
                <threetab1  v-for="(item,i) of sanya" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.subtitle"
                  :dates="item.dates"
                ></threetab1>             
              </ul>
            </el-tab-pane>
            <el-tab-pane label="丽江" name="third">
               <ul class="threetabbar-ul">
                 <threetab2  v-for="(item,i) of lijiang" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.subtitle"
                  :dates="item.dates"
                 ></threetab2>
               </ul>  
            </el-tab-pane>
            <el-tab-pane label="大理" name="fourth">
              <ul class="threetabbar-ul">
                <threetab1  v-for="(item,i) of sanya" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.subtitle"
                  :dates="item.dates"
                ></threetab1>             
              </ul>
            </el-tab-pane>
            <el-tab-pane label="青海" name="five">
                <ul class="threetabbar-ul">
                 <threetab2  v-for="(item,i) of lijiang" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.subtitle"
                  :dates="item.dates"
                 ></threetab2>
               </ul>  
            </el-tab-pane>
            <el-tab-pane label="香格里拉" name="six">
              <ul class="threetabbar-ul">
                <threetab1  v-for="(item,i) of sanya" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.subtitle"
                  :dates="item.dates"
                ></threetab1>             
              </ul>
            </el-tab-pane>
            <el-tab-pane label="塞班岛" name="seven">
                <ul class="threetabbar-ul">
                 <threetab2  v-for="(item,i) of lijiang" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.subtitle"
                  :dates="item.dates"
                 ></threetab2>
               </ul>  
            </el-tab-pane>
            <el-tab-pane label="巴厘岛" name="eight">
              <ul class="threetabbar-ul">
                <threetab1  v-for="(item,i) of sanya" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.subtitle"
                  :dates="item.dates"
                ></threetab1>             
              </ul>
            </el-tab-pane>
            <el-tab-pane label="法国" name="nine">
                <ul class="threetabbar-ul">
                 <threetab2  v-for="(item,i) of lijiang" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.subtitle"
                  :dates="item.dates"
                 ></threetab2>
               </ul>  
            </el-tab-pane>
            <el-tab-pane label="土耳其" name="ten">
               <ul class="threetabbar-ul">
                <threetab1  v-for="(item,i) of sanya" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.subtitle"
                  :dates="item.dates"
                ></threetab1>             
              </ul>
            </el-tab-pane>
        </el-tabs>
  </div>
</template>
<script>
import Threetab1 from './Threetab1.vue';
import Threetab2 from './Threetab2.vue';
  export default {
    data() {
      return {
        activeName: 'second',
        sanya:[],
        lijiang:[]
      };
    },
    components:{
        "threetab1":Threetab1,
        "threetab2":Threetab2
    },
    methods: {
       
        load(){
             this.axios.get("http://127.0.0.1:3000/three").then(result=>{
                  this.lijiagn=result.data;
                   console.log(result)
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
<style scoped>
    .threenav{
       
        width:1335px;
        margin:100px auto;
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
    .el-icon-arrow-left:before {
    content: "" !important;
   }
   .el-icon-arrow-right:before {
    content: "" !important;
    }
    .threetabbar-ul{
      list-style:none;
        display:flex;
        flex-wrap:wrap;      
    }
</style>