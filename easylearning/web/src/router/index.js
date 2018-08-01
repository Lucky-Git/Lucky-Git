import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Home from '@/components/Home'
import Html from '@/components/Html'
import Htmlintro from '@/components/Htmlintro'
import Htmledit from '@/components/Htmledit'
import Htmlbasic from '@/components/Htmlbasic'
import Htmlobj from '@/components/Htmlobj'
import Htmltestintro from '@/components/Htmltestintro'
import Htmltest from '@/components/Htmltest'
import Clang from '@/components/Clang'
import Clangintro from '@/components/Clangintro'
import Clangbasic from '@/components/Clangbasic'
import Clangtestintro from '@/components/Clangtestintro'
import Clangtest from '@/components/Clangtest'
import Os from '@/components/Os'
import Ostestintro from '@/components/Ostestintro'
import Ostest from '@/components/Ostest'
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
      path: '/htmlobj',
      name: 'HTML实例',
      component: Htmlobj
    },
    {
      path: '/htmltestintro',
      name: 'HTML测试',
      component: Htmltestintro
    },
    {
      path: '/htmltest',
      name: 'HTML测试',
      component: Htmltest
    },
    {
      path: '/clang',
      name: 'C语言',
      component: Clang
    },
    {
      path: '/clangintro',
      name: 'C语言简介',
      component: Clangintro
    },
    {
      path: '/clangbasic',
      name: 'C语言基本数据类型和输入输出',
      component: Clangbasic
    },
    {
      path: '/clangtestintro',
      name: 'C语言测验',
      component: Clangtestintro
    },
    {
      path: '/clangtest',
      name: 'C语言测验',
      component: Clangtest
    },
    {
      path: '/os',
      name: '操作系统',
      component: Os
    },
    {
      path: '/ostestintro',
      name: '操作系统测验',
      component: Ostestintro
    },
    {
      path: '/ostest',
      name: '操作系统测验',
      component: Ostest
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
