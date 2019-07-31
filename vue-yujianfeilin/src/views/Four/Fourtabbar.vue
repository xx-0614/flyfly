<template>
  <div class="fourtabbar-nav">
        <el-tabs v-model="activeName">
            <el-tab-pane label="全部" name="first">
                <div class="fourtabbar-div">
                    <fourtab1 v-for="(item ,i) of city" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.title"
                        :dates="item.dates"
                    ></fourtab1>
                    <div class="page-div">
                       <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="cityAll.length" @click.native="page_change"></el-pagination>
                    </div>
                </div>
            </el-tab-pane>
            <el-tab-pane label="三亚" name="second">
                <div class="fourtabbar-div">          
                    <fourtab2 v-for="(item,i) of sanya" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.title"
                        :dates="item.dates"
                    ></fourtab2>
                    <div class="page-div">               
                        <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="sanyaAll.length" @click.native="page_change_sanya"></el-pagination>      
                    </div>
               </div>
            </el-tab-pane>
            <el-tab-pane label="丽江" name="third">
                <div class="fourtabbar-div">          
                    <fourtab1 v-for="(item,i) of lijiang" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.title"
                        :dates="item.dates"
                    ></fourtab1>
                     <div class="page-div">                  
                      <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="lijiangAll.length" @click.native="page_change_lijiang"></el-pagination>
                  </div>
               </div>
            </el-tab-pane>
            <el-tab-pane label="大理" name="fourth">
                 <div class="fourtabbar-div">          
                    <fourtab2 v-for="(item,i) of sanya" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.title"
                        :dates="item.dates"
                    ></fourtab2>
                      <div class="page-div">               
                     <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="sanyaAll.length" @click.native="page_change_sanya"></el-pagination>      
                </div>
               </div>
            </el-tab-pane>
            <el-tab-pane label="青海" name="five">
                 <div class="fourtabbar-div">          
                    <fourtab1 v-for="(item,i) of lijiang" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.title"
                        :dates="item.dates"
                    ></fourtab1>
                     <div class="page-div">                  
                      <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="lijiangAll.length" @click.native="page_change_lijiang"></el-pagination>
                  </div>
               </div>
            </el-tab-pane>
            <el-tab-pane label="香格里拉" name="six">
                 <div class="fourtabbar-div">          
                    <fourtab2 v-for="(item,i) of sanya" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.title"
                        :dates="item.dates"
                    ></fourtab2>
                      <div class="page-div">               
                     <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="sanyaAll.length" @click.native="page_change_sanya"></el-pagination>      
                </div>
               </div>
            </el-tab-pane>
            <el-tab-pane label="塞班岛" name="seven">
                  <div class="fourtabbar-div">          
                    <fourtab1 v-for="(item,i) of lijiang" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.title"
                        :dates="item.dates"
                    ></fourtab1>
                     <div class="page-div">                  
                      <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="lijiangAll.length" @click.native="page_change_lijiang"></el-pagination>
                  </div>
               </div>
            </el-tab-pane>
            <el-tab-pane label="巴厘岛" name="eight">
                <div class="fourtabbar-div">          
                    <fourtab2 v-for="(item,i) of sanya" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.title"
                        :dates="item.dates"
                    ></fourtab2>
                      <div class="page-div">               
                     <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="sanyaAll.length" @click.native="page_change_sanya"></el-pagination>      
                </div>
               </div>
            </el-tab-pane>
            <el-tab-pane label="法国" name="nine">
                 <div class="fourtabbar-div">          
                    <fourtab1 v-for="(item,i) of lijiang" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.title"
                        :dates="item.dates"
                    ></fourtab1>
                     <div class="page-div">                  
                      <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="lijiangAll.length" @click.native="page_change_lijiang"></el-pagination>
                  </div>
               </div>
            </el-tab-pane>
            <el-tab-pane label="土耳其" name="ten">
                <div class="fourtabbar-div">          
                    <fourtab2 v-for="(item,i) of sanya" :key="i"
                        :imgurl="require(`../../assets/${item.img}`)"
                        :subtitle="item.title"
                        :dates="item.dates"
                    ></fourtab2>
                      <div class="page-div">               
                     <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="sanyaAll.length" @click.native="page_change_sanya"></el-pagination>      
                </div>
               </div>
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
        cityAll:[],
        city:[],
        page:1,
        sanyaAll:[],
        sanya:[],
        lijiangAll:[],
        lijiang:[],
      };
    },
    components:{
        "fourtab1":Fourtab1,
        "fourtab2":Fourtab2
    },
    methods: {
         page_change(e){
         if(e.target.nodeName=="LI"){
           this.page=e.target.innerHTML;
           this.city=this.cityAll.slice((this.page-1)*16,this.page*16);
         }
       },
       page_change_sanya(e){
         if(e.target.nodeName=="LI"){
           this.page=e.target.innerHTML;
           this.sanya=this.sanyaAll.slice((this.page-1)*16,this.page*16);
         }
       },
        page_change_lijiang(e){
         if(e.target.nodeName=="LI"){
           this.page=e.target.innerHTML;
           this.lijiang=this.lijiangAll.slice((this.page-1)*16,this.page*16);
         }
       },       
        load(){
             this.axios.get("http://127.0.0.1:3000/four").then(result=>{
                //    console.log(result);
                   this.cityAll=result.data;
                //    console.log(this.city)
                   var n=0;
                   var m=0;
                   for(var i=0 ;i<result.data.length;i++){                    
                          if(result.data[i].city_id=="1"){
                                this.sanyaAll[n]=result.data[i];
                                 n++;
                        }else 
                          if(result.data[i]
                          .city_id=="2"){
                                 this.lijiangAll[m]=result.data[i];
                                  m++;
                        }                                           
                     }
                    //  console.log(this.sanya,this.lijiang)
                    this.city=this.cityAll.slice(0,16);
                    this.sanya=this.sanyaAll.slice(0,16);
                    this.lijiang=this.lijiangAll.slice(0,16)
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
    .fourtabbar-div{
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
    .page-div{
      width:100%;
      margin:50px auto;
    }
</style>