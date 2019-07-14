import Vue from 'vue'
import Router from 'vue-router'

import index from './views/index/index'
import Three from  './views/Three/Three'
import Threetabbar from './views/Three/Threetabbar'
import Threetab1 from './views/Three/Threetab1'
import Five from  './views/Five/Five'
import Fivetab from  './views/Five/Fivetab'


Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',component:index},  
    {path:'/Three',component:Three},
    {path:'/Threetabbar',component:Threetabbar} ,
    {path:'/Threetab1',component:Threetab1} ,
    {path:'/Five',component:Five},
    {path:'/Fivetab',component:Fivetab},
  ]
})
