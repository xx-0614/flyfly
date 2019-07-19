import Vue from 'vue'
import Router from 'vue-router'

import index from './views/index/index'

import Three from  './views/Three/Three'
import Threetabbar from './views/Three/Threetabbar'
import Threetab1 from './views/Three/Threetab1'


import Four from './views/Four/Four'
import Fourtabbar from './views/Four/Fourtabbar'
import Fourtab1 from './views/Four/Fourtab1'

import Five from  './views/Five/Five'
import Fivetab from  './views/Five/Fivetab'

import Six from './views/Six/Six'

import Seven from './views/Seven/Seven'


Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',component:index},  
    {path:'/Three',component:Three},
    {path:'/Threetabbar',component:Threetabbar} ,
    {path:'/Threetab1',component:Threetab1} ,



    {path:'/Four',component:Four},
    {path:'/Fourtabbar',component:Fourtabbar},
    {path:'/Fourtab1',component:Fourtab1},
   

    {path:'/Five',component:Five},
    {path:'/Fivetab',component:Fivetab},

    {path:'/Six',component:Six},

    {path:'/Seven',component:Seven},
  ]
})
