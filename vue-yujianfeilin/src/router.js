import Vue from 'vue'
import Router from 'vue-router'

import index from './views/index'
import Three from  './views/Three'

Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',component:index},  
    {path:'/Three',component:Three},
  ]
})
