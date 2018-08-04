import Vue from 'vue'
import App from './App.vue'
import router from './router'
import axios from 'axios'
import VueCookie from 'vue-cookies'

axios.defaults.baseURL = 'http://biocenter.shu.edu.cn/shop/backend/web/index.php';
// axios.defaults.headers.post['Content-Type'] = 'application/json';


import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';

Vue.use(ElementUI);
Vue.use(VueCookie)

Vue.config.productionTip = false
Vue.prototype.$http = axios

new Vue({
    router,
    render: h => h(App)
}).$mount('#app')