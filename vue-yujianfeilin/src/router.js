import Vue from 'vue'
import Router from 'vue-router'
// import Home from './views/Home.vue'
import Three from  './views/Three.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {path:'/Three',component:Three}, 
  ]
})
