import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//完整引入element-ui
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css';

Vue.use(ElementUI);

//引入axios.js文件
import axios from "./axios"

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
