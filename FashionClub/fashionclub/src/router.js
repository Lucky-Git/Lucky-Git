import Vue from 'vue'
import Router from 'vue-router'
import Login from './views/Login'
import Register from './views/Register'
import Main from './views/Main'
import NotFound from './views/NotFound'
import Pman from './views/Pman'
import Pwomen from './views/Pwomen'
import Women from './views/Women'
import Shoes from './views/Shoes'
import Contact from './views/Contact'
import About from './views/About'
import Phandbags from './views/Phandbags'
import Pcosmetic from './views/Pcosmetic'
import Jewellery from './views/Jewellery'
import Watches from './views/Watches'
import Handbags from './views/Handbags'


Vue.use(Router)

export default new Router({
    routes: [
        {path: '/', component: Main},
        {path: '/login', component: Login},
        {path: '/register', component: Register},
        {path: '/contact', component: Contact},
        {path: '/about', component: About},
        {
            path: '/main', component: Main, children: [
                {path: '/', component: Pman},
                {path: 'pwomen', component: Pwomen},
                {path: '/main/pman', component: Pman},
                {path: '/main/phandbags', component: Phandbags},
                {path: '/main/pcosmetic', component: Pcosmetic}
            ]
        },
        {path: '/women', component: Women},
        {path: '/shoes', component: Shoes},
        {path: '/jewellery', component: Jewellery},
        {path: '/watches', component: Watches},
        {path: '/handbags', component: Handbags},
        {path: '/*', component: NotFound},
    ]
})
