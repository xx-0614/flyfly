import Vue from 'vue'
import Router from 'vue-router'

import Index from './views/Index/Index'
import Details from './views/Details/Details'
import Search from './views/Search/Search'
import Second from './views/Second/Second'

import Three from  './views/Three/Three'
import Threetabbar from './views/Three/Threetabbar'
import Threetab1 from './views/Three/Threetab1'


import Four from './views/Four/Four'
import Fourtabbar from './views/Four/Fourtabbar'
// import Fourtab1 from './views/Four/Fourtab1'

import Five from  './views/Five/Five'
// import Fivetab from  './views/Five/Fivetab'

import Six from './views/Six/Six'

import Seven from './views/Seven/Seven'

import Eight from './views/Eight/Eight'






Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',component:Index},  
    {path:"/Details/:pid",component: Details,props:true},  
    {path:'/Search',component:Search},  
    {path:'/Second',component:Second},  
    {path:'/Three',component:Three},
    {path:'/Threetabbar',component:Threetabbar} ,
    {path:'/Threetab1',component:Threetab1} ,


    {path:'/Four',component:Four},
   {path:'/Fourtabbar',component:Fourtabbar},
    // {path:'/Fourtab1',component:Fourtab1},
   
    {path:'/Five',component:Five},
    // {path:'/Fivetab',component:Fivetab},

    {path:'/Six',component:Six},

    {path:'/Seven',component:Seven},

    {path:'/Eight',component:Eight},
    
  ]
},
  {linkExactActiveClass: 'active'},
)
