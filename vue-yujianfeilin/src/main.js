import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//完整引入element-ui
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css';

Vue.use(ElementUI);

import Myheader from './components/header'
//将MyHeader普通对象，重新封装为全局组件
Vue.component("my-header",Myheader)
import Myfooter from './components/footer'
Vue.component("my-footer",Myfooter)

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
