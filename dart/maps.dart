/*
 * @Author: w
 * @Date: 2021-06-08 21:43:18
 * @LastEditors: w
 * @LastEditTime: 2021-06-08 22:27:24
 */
void main() {

  // 第一种定义map的方式
  var person = {
    'name':'monk',
    'age':20,
    'hobby':false
  };
  print(person['name']);

  // 第二种定义map的方式
  var oneMap = new Map();
  oneMap['name'] = 'w';
  oneMap['age'] = 20;
  oneMap['list'] = ['work','hobby'];
  print(oneMap);
}