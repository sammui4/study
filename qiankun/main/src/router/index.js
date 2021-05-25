/*
 * @Author: w
 * @Date: 2021-05-22 17:05:00
 * @LastEditors: w
 * @LastEditTime: 2021-05-25 23:30:43
 */
import { createRouter, createWebHistory } from 'vue-router'
// import Home from '../views/Home.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    redirect: '/father'
  },
  { path:'/father',name:'father',component: ()=> import('@/components/father')},
  { path: '/404',name:'nofind',component: ()=>import('../components/404')},
  // {
  //   path: '/:pathMatch(.*)',
  //   redirect: '/404'
  // }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})


const whiteList = ['/father','/404','/','/vue','/vue/child'];

router.beforeEach((to, from, next)=>{
  const toPath = to.path.replace(/\/$/, '')
  console.log(toPath)
  if(!~whiteList.indexOf(toPath)){
    return next('/404')
  }
  next()
})

export default router
