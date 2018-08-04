import Vue from 'vue'
import Router from 'vue-router'
import Login from './views/Login'
import Register from './views/Register'
import Main from './views/Main'
import NotFound from './views/NotFound'
import Pman from './views/Pman'
import Pwoman from './views/Pwoman'
import ProductList from './views/ProductList'
import Sales from './views/Sales'
import Contact from './views/Contact'
import About from './views/About'


Vue.use(Router)

export default new Router({
  routes: [
      {path:'/',component:Main},
      {path:'/login',component:Login},
      {path:'/register',component:Register},
      {path:'/contact',component:Contact},
      {path:'/about',component:About},
      {path:'/main',component:Main,children:[
          {path:'',component:Pman},
          {path:'pwomen',component:Pwoman},
          {path:'/main/pman',component:Pman},
          {path:'/main/sales',component:Sales},
          {path:'/main/pman',component:Pman}
       ]},
      {path:'/*',component:NotFound},
  ]
})
