import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'
Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    // 保存数据
    commentList:[],
    kwd:''
  },
  mutations: {
    // 修改数据
    setList(state,kwd){
        axios.get("search",{
            params:{
                kwd:kwd
            }
        }).then(res=>{
          // console.log(res.data);
          state.commentList=res.data;
          // console.log(state.commentList)
          state.kwd=kwd;
        })
    }
  },
  actions: {
    
  },
  getters:{
    // 获取Vuex中全局共享的数据
    getcommentList(state){
      return state.commentList;
    },
    getKwd(state){
      return state.kwd;
    }
  }
})
