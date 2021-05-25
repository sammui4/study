/*
 * @Author: w
 * @Date: 2021-05-22 17:05:00
 * @LastEditors: w
 * @LastEditTime: 2021-05-25 21:31:17
 */
module.exports = {
  root: true,
  env: {
    node: true
  },
  extends: [
    'plugin:vue/vue3-essential',
  ],
  parserOptions: {
    parser: 'babel-eslint'
  },
  rules: {
    'no-console': process.env.NODE_ENV === 'production' ? 'warn' : 'off',
    'no-debugger': process.env.NODE_ENV === 'production' ? 'warn' : 'off',
    'no-unused-var':'off',
    'comma-dangle':'off',
    'semi':'off',
    'no-unused-vars':'off',
    'no-multiple-empty-lines':'off',
    'eol-last':'off',
  }
}
