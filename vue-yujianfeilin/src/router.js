import Vue from 'vue'
import Router from 'vue-router'

import index from './views/index'
import Three from  './views/Three'
import Threetabbar from './views/Threetabbar'
import Threetab1 from './views/Threetab1'

Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',component:index},  
    {path:'/Three',component:Three},
    {path:'/Threetabbar',component:Threetabbar} ,
    {path:'/Threetab1',component:Threetab1} ,
  ]
})
