/*
 * @Author: w
 * @Date: 2021-05-25 21:38:46
 * @LastEditors: w
 * @LastEditTime: 2021-05-25 22:11:02
 */
const { name } = require('./package.json');
module.exports = {
  devServer: {
    port: 8083,			// 重点6
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