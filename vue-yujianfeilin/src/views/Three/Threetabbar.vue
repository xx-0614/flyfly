<template>
  <div class="threenav">
        <el-tabs v-model="activeName" >
            <el-tab-pane label="全部" name="first">
               <div class="threetabbar-div">
                 <threetab1  v-for="(item,i) of city" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.title"
                  :dates="item.dates"
                  :pid="ids[i]"
                 ></threetab1> 
                 <div class="page-div">
                    <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="cityAll.length" @click.native="page_change"></el-pagination>
                 </div>
              </div>
            </el-tab-pane>
            <el-tab-pane label="三亚" name="second">
              <div class="threetabbar-div">
                <threetab1  v-for="(item,i) of sanya" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.title"
                  :dates="item.dates"
                  :pid="ids[i]"
                ></threetab1>   
                <div class="page-div">               
                     <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="sanyaAll.length" @click.native="page_change_sanya"></el-pagination>      
                </div>
              </div>
            </el-tab-pane>
            <el-tab-pane label="丽江" name="third">
               <div class="threetabbar-div">
                 <threetab2  v-for="(item,i) of lijiang" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.title"
                  :dates="item.dates"
                  :pid="idl[i]"
                 ></threetab2>
                  <div class="page-div">                  
                      <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="lijiangAll.length" @click.native="page_change_lijiang"></el-pagination>
                  </div>
               </div>  
            </el-tab-pane>
            <el-tab-pane label="大理" name="fourth">
              <div class="threetabbar-div">
                <threetab1  v-for="(item,i) of sanya" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.title"
                  :dates="item.dates"
                  :pid="ids[i]"
                ></threetab1>  
                 <div class="page-div">
                     <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="sanyaAll.length" @click.native="page_change_sanya"></el-pagination>    
                 </div>  
              </div>
            </el-tab-pane>
            <el-tab-pane label="青海" name="five">
                <div class="threetabbar-div">
                 <threetab2  v-for="(item,i) of lijiang" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.title"
                  :dates="item.dates"
                  :pid="idl[i]"
                 ></threetab2>
                  <div class="page-div">               
                      <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="lijiangAll.length" @click.native="page_change_lijiang"></el-pagination>
                  </div>
               </div>  
            </el-tab-pane>
            <el-tab-pane label="香格里拉" name="six">
              <div class="threetabbar-div">
                <threetab1  v-for="(item,i) of sanya" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.title"
                  :dates="item.dates"
                  :pid="ids[i]"
                ></threetab1>  
                 <div class="page-div">             
                       <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="sanyaAll.length" @click.native="page_change_sanya"></el-pagination> 
                 </div>
              </div>
            </el-tab-pane>
            <el-tab-pane label="塞班岛" name="seven">
                <div class="threetabbar-div">
                 <threetab2  v-for="(item,i) of lijiang" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.title"
                  :dates="item.dates"
                  :pid="idl[i]"
                 ></threetab2>
                  <div class="page-div">               
                      <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="lijiangAll.length" @click.native="page_change_lijiang"></el-pagination>
                  </div>
               </div>  
            </el-tab-pane>
            <el-tab-pane label="巴厘岛" name="eight">
              <div class="threetabbar-div">
                <threetab1  v-for="(item,i) of sanya" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.title"
                  :dates="item.dates"
                  :pid="ids[i]"
                ></threetab1>
                 <div class="page-div">             
                     <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="sanyaAll.length" @click.native="page_change_sanya"></el-pagination> 
                 </div>
              </div>
            </el-tab-pane>
            <el-tab-pane label="法国" name="nine">
                <div class="threetabbar-div">
                 <threetab2  v-for="(item,i) of lijiang" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.title"
                  :dates="item.dates"
                  :pid="idl[i]"
                 ></threetab2>
                  <div class="page-div">    
                      <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="lijiangAll.length" @click.native="page_change_lijiang"></el-pagination>
                  </div>
               </div>  
            </el-tab-pane>
            <el-tab-pane label="土耳其" name="ten">
               <div class="threetabbar-div">
                <threetab1  v-for="(item,i) of sanya" :key="i"
                  :imgurl="require(`../../assets/${item.img}`)"
                  :subtitle="item.title"
                  :dates="item.dates"
                  :pid="ids[i]"
                ></threetab1>  
                 <div class="page-div">
                    <el-pagination 	:page-size="16" :pager-count="5" layout="pager" 	:total="sanyaAll.length" @click.native="page_change_sanya"></el-pagination>   
                 </div>  
              </div>
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
        activeName: 'first',
        cityAll:[],
        city:[],
        page:1,
        sanyaAll:[],
        sanya:[],
        lijiangAll:[],
        lijiang:[],
        ids:[],
        idl:[]
      };
    },
    components:{
        "threetab1":Threetab1,
        "threetab2":Threetab2,
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
             this.axios.get("http://127.0.0.1:3000/three").then(result=>{
                   this.cityAll=result.data;
                   var n=0;
                   var m=0;
                   for(var i=0 ;i<result.data.length;i++){                    
                          if(result.data[i].city_id=="1"){
                            this.sanyaAll[n]=result.data[i];
                            n++;
                        }else if(result.data[i].city_id=="2"){
                            this.lijiangAll[m]=result.data[i];
                            m++;
                        }   
                    }
                    this.city=this.cityAll.slice(0,16);
                    this.sanya=this.sanyaAll.slice(0,16);
                    this.lijiang=this.lijiangAll.slice(0,16)
                    for(var i=0;i<this.sanya.length;i++){
                        this.ids.push(this.sanya[i].href.split("=")[1])
                    }
                     for(var i=0;i<this.lijiang.length;i++){
                        this.idl.push(this.lijiang[i].href.split("=")[1])
                    }
                 })
              } ,
    },
    
    created(){
         this.load(); 
    },
         
  };
</script>
<style>
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
    .threetabbar-div{
        display:flex;
        flex-wrap:wrap;
    }
    .el-pager li {
      width:30px !important;
      height:30px  !important;
      min-width:30px !important;
      line-height:30px !important;
      background-color:#797979 !important;
      border-radius:50%;
      margin-left:20px !important;;
      color:#fff !important;
      padding:0 !important;
      font-family: Arial;
    }
    .el-pager li:hover{
      background-color: #69cfc1 !important;
    }
    .el-pager li.active{
       background-color: #69cfc1 !important;
    }
    .page-div{
      width:100%;
      margin:50px auto;
    }
</style>