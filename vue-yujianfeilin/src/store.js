import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'
Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    commentList:[]
  },
  mutations: {
    setList(state,kwd){
        axios.get("search",{
            params:{
                kwd:kwd
            }
        }).then(res=>{
          // console.log(res.data);
          state.commentList=res.data;
          // console.log(state.commentList)
        })
    }
  },
  actions: {
    
  },
  getters:{
    getcommentList(state){
      return state.commentList;
    }
  }
})
