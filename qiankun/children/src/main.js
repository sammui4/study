/*
 * @Author: w
 * @Date: 2021-05-25 21:25:54
 * @LastEditors: w
 * @LastEditTime: 2021-05-25 22:21:09
 */
import { createApp } from 'vue'
import App from './App.vue'
import './registerServiceWorker'
import router from './router'
import store from './store'

let instance = null;
function render(props = {}) {
  const { container } = props;
  instance = createApp(App).use(store).use(router).mount(container ? container.querySelector('#app') : '#app')
}

if(!window.__POWERED_BY_QIANKUN__){
  render()
}

export async function bootstrap() {
  console.log('[vue] vue app bootstraped');
}
export async function mount(props) {
  console.log('[vue] props from main framework', props);
  render(props);
}
export async function unmount() {
  instance.$el.innerHTML = '';
  instance = null;
}
