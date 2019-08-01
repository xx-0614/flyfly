<template>
    <div class="search">
        <div class="main">
            <div class="content">
                <h2>全部搜索结果</h2>
                <ul>
                    <li>
                        <h3>没有查询到您想要的结果。</h3>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    
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
        margin-bottom: 10px;
        font-size: 20px;
        line-height:20px;
    }
</style>
