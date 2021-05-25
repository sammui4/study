/*
 * @Author: w
 * @Date: 2021-05-25 21:25:54
 * @LastEditors: w
 * @LastEditTime: 2021-05-25 23:28:07
 */
import { createRouter, createWebHistory } from 'vue-router'
const isQiankun = window.__POWERED_BY_QIANKUN__
const routes = [
  { path:'/', redirect: '/child'},
  { path: '/child',name:'child',component: ()=>import('../components/children')},
  { path: '/child2',name:'child2',component: ()=>import('../components/children2')},
  { path: '/404',name:'nofind',component: ()=>import('../components/404')},

]

const router = createRouter({
  history: createWebHistory(isQiankun?'/vue':process.env.BASE_URL),
  routes
})

export default router
