import Vue from 'vue'
import Router from 'vue-router'
// import Home from './views/Home.vue'
import Three from  './views/Three'
import Threetabbar from './views/Threetabbar'
import Threetab from './views/Threetab'

Vue.use(Router)

export default new Router({
  routes: [
    {path:'/Three',component:Three},
    {path:'/Threetabbar',component:Threetabbar} ,
    {path:'/Threetab',component:Threetab} ,
  ]
})
