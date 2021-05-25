/*
 * @Author: w
 * @Date: 2021-05-22 17:05:00
 * @LastEditors: w
 * @LastEditTime: 2021-05-25 22:11:57
 */
import { createApp } from 'vue'
import App from './App.vue'
import './registerServiceWorker'
import router from './router'
import store from './store'
import { registerMicroApps, start, setDefaultMountApp } from 'qiankun'
createApp(App).use(store).use(router).mount('#app')


registerMicroApps([
  {
    name: 'vue app',
    entry: '//localhost:8083',
    container: '#vue',
    activeRule: '/vue'
  }
], {});


start()