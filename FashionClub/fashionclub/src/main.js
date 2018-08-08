import Vue from 'vue'
import App from './App.vue'
import router from './router'
import VueCookies from 'vue-cookies'
import axios from 'axios'
axios.defaults.baseURL='http://biocenter.shu.edu.cn/shop/backend/web/index.php'
axios.defaults.headers.post['Content-Type']='application/x-www-form-urlencoded'


Vue.use(VueCookies)

Vue.config.productionTip = false
Vue.prototype.$http=axios
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
