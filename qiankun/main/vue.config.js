/*
 * @Author: w
 * @Date: 2021-05-23 15:27:47
 * @LastEditors: w
 * @LastEditTime: 2021-05-25 21:53:45
 */
module.exports = {
  transpileDependencies: ['common'],
  devServer: {
    port: 8085,
    headers: {			// 重点1: 允许跨域访问子应用页面
      'Access-Control-Allow-Origin': '*',
    },
    proxy:{
      '/admin':{
        target:'http://192.168.1.36:9527',
        changeOrigin: true,
        pathRewrite: {
          '/admin': ''
        }
      }
    }
  }
}