import Vue from 'vue'
import Router from 'vue-router'
import Axios from 'axios'
import Home from './views/Home.vue'
import About from './views/About.vue'


Vue.use(Router)

export default new Router({
  routes: [
      {path:'/',component:Main},
      {path:'/login',component:Login},
      {path:'/register',component:Register},
      {path:'/main',component:Main,children:[
          {path:'/ '}
       ]},
  ]
})
