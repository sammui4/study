/*
 * @Author: w
 * @Date: 2021-05-25 21:25:54
 * @LastEditors: w
 * @LastEditTime: 2021-05-25 22:50:03
 */
import { createRouter, createWebHistory } from 'vue-router'
const isQiankun = window.__POWERED_BY_QIANKUN__
const routes = [
  { path:'/', redirect: '/child'},
  { path: '/child',name:'child',component: ()=>import('../components/children')}
]

const router = createRouter({
  history: createWebHistory(isQiankun?'/vue':process.env.BASE_URL),
  routes
})

export default router
