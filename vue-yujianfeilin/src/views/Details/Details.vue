<template>
    
</template>
<script>
export default {
    data(){
        return{
            pic:[],
            txt:[]
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
                console.log(this.txt)
            }
            )
        }
    },
    created(){
        this.load();
    }
}
</script>
<style>

</style>

