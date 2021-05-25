/*
 * @Author: w
 * @Date: 2021-05-25 21:25:54
 * @LastEditors: w
 * @LastEditTime: 2021-05-25 22:01:16
 */
import { createRouter, createWebHistory } from 'vue-router'

const routes = [
  { path:'/', redirect: '/child'},
  { path: '/child', component: ()=>import('../components/children')}
]

const router = createRouter({
  base:window.__POWERED_BY_QIANKUN__?'/vue':'/',
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
