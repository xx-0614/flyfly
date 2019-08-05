<template>
    <div class="search">
        <div class="main">
            <div class="content">
                <h2>全部搜索结果</h2>
                <!-- <p>{{this.$store.getters.getKwd}}</p> -->
                <ul>
                    <li>
                        <h3 v-if="this.$store.getters.getcommentList.length===0">没有查询到您想要的结果。</h3>
                    </li>
                    <li v-for="(item,i) of this.$store.getters.getcommentList" :key="i">
                        <h3 >{{item.title}}</h3>
                        <p>[{{item.dates}}]</p>
                    </li>
                     
                </ul>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
           getcommentList:[],
           getKwd:''
        }
    },
    mounted(){
        
    }
    
}
</script>
<style scoped>
@import "../../assets/common.css";
    .main{
        margin:0 auto;
        width:1540px;
        padding:150px 50px 50px;
    }
    h2{
        margin-bottom:20px;
    }
    ul{
        list-style: none;
    }
    ul li{
        border-bottom:1px solid #ddd;
        padding:20px 0;
        line-height:1.6em;
    }
    li h3{
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        font-size: 20px;
        line-height:20px;
        display:block;
        width:95%;
    }
    li p{
        text-align:right;
    }
</style>
