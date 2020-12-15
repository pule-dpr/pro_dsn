import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import MintUI from 'mint-ui'
import axios from 'axios'
import moment from 'moment'
import Tabbar from './components/tabbar'
import 'mint-ui/lib/style.min.css'
//注册为vue的插件
Vue.use(MintUI);
Vue.config.productionTip = false
axios.defaults.baseURL="http://127.0.0.1:3000"
Vue.prototype.axios=axios;
Vue.prototype.moment = moment;
Vue.component("tabbar",Tabbar);
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
