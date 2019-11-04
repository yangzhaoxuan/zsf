import Vue from 'vue'
import App from './App'
import router from './router'
import MintUi from 'mint-ui'
import axios from "axios"

import Vant from 'vant';
import 'vant/lib/index.css';

Vue.use(Vant);
//2.单引入mint-ui库中样式文件
import 'mint-ui/lib/style.css'
//3.将mint-ui注册vue实例
Vue.use(MintUi);
//注册全局axios
Vue.prototype.axios = axios;
//绑定默认端口
axios.defaults.baseURL ='http://127.0.0.1:5050/'
//设置session
axios.defaults.withCredentials = true;



/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  render: h => h(App)
})
