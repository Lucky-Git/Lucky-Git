import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Home from '@/components/Home'
import Html from '@/components/Html'
import Htmlintro from '@/components/Htmlintro'
import Htmledit from '@/components/Htmledit'
import Htmlbasic from '@/components/Htmlbasic'
import Clang from '@/components/Clang'
import Os from '@/components/Os'
import Ds from '@/components/Ds'
import Cc from '@/components/Cc'
import Cn from '@/components/Cn'

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
    },
    {
      path: '/html',
      name: 'HTML',
      component: Html
    },
    {
      path: '/htmlintro',
      name: 'HTML简介',
      component: Htmlintro
    },
    {
      path: '/htmledit',
      name: 'HTML编辑器',
      component: Htmledit
    },
    {
      path: '/htmlbasic',
      name: 'HTML基础',
      component: Htmlbasic
    },
    {
      path: '/clang',
      name: 'C语言',
      component: Clang
    },
    {
      path: '/os',
      name: '操作系统',
      component: Os
    },
    {
      path: '/ds',
      name: '数据结构',
      component: Ds
    },
    {
      path: '/cc',
      name: '计算机组成原理',
      component: Cc
    },
    {
      path: '/cn',
      name: '计算机网络',
      component: Cn
    }
  ]
})
