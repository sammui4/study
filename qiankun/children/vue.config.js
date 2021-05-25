/*
 * @Author: w
 * @Date: 2021-05-25 21:38:46
 * @LastEditors: w
 * @LastEditTime: 2021-05-25 23:34:47
 */
const { name } = require('./package.json');


const port = 8083;
const dev = process.env.NODE_ENV === 'development'
module.exports = {
  // 加入这句才生效，不然子应用的路由无法映射出来
  publicPath: dev ? `//localhost:${port}` : '/',
  devServer: {
    port,			// 重点6
    headers: {			// 重点7：同重点1，允许子应用跨域
        'Access-Control-Allow-Origin': '*',
    },
  },
  configureWebpack:{
    output: {
      library: `${name}-[name]`,
      libraryTarget: 'umd',		// 把子应用打包成 umd 库格式
      jsonpFunction: `webpackJsonp_${name}`,
    },
  }
}