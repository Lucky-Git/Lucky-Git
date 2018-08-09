import Vue from 'vue'
import App from './App.vue'
import router from './router'

Vue.config.productionTip = false;

import axios from 'axios'

axios.defaults.baseURL = 'http://biocenter.shu.edu.cn/shop/backend/web/index.php';
axios.defaults.headers.post['Content-Type'] = 'application/json';
Vue.prototype.$http = axios;

import VueCookies from 'vue-cookies'

Vue.use(VueCookies);

import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';

Vue.use(ElementUI);

import VueMaterial from 'vue-material'
import 'vue-material/dist/vue-material.min.css'

Vue.use(VueMaterial);

import VueAwesomeSwiper from 'vue-awesome-swiper'
import 'swiper/dist/css/swiper.css'

Vue.use(VueAwesomeSwiper, /* { default global options } */);

new Vue({
    router,
    render: h => h(App)
}).$mount('#app');
