/*
 * @Author: w
 * @Date: 2021-05-22 17:05:00
 * @LastEditors: w
 * @LastEditTime: 2021-05-25 21:30:14
 */
import { createRouter, createWebHistory } from 'vue-router'
// import Home from '../views/Home.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    redirect: '/father'
  },
  // {
  //   path: '/about',
  //   name: 'About',
  //   // route level code-splitting
  //   // this generates a separate chunk (about.[hash].js) for this route
  //   // which is lazy-loaded when the route is visited.
  //   component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  // }
  { path:'/father',name:'father',component: ()=> import('@/components/father')}
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
