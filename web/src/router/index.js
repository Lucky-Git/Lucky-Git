import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Home from '@/components/Home'

Vue.use(Router)

export default new Router({
  routes: [{
      path: '/',
      name: '首页',
      component: Home
    },
    {
      path: '/home',
      name: '首页',
      component: Home
    }
  ]
})
