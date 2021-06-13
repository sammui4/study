/*
 * @Author: w
 * @Date: 2021-06-08 21:43:18
 * @LastEditors: w
 * @LastEditTime: 2021-06-12 17:24:37
 */

// 无序的键值对
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


  // 常用属性
  // keys
  print(person.keys);
  print(person.keys.toList());
  // 值
  print(person.values.toList());
  print(person.isEmpty);
  print(person.isNotEmpty);


  // 常用方法
  person.addAll({
    'work':['code','mai'],
    "height":170
  });
  print(person);
  person.remove('work');
  print(person);

  // 查看是不是还有值
  print(person.containsValue('monk'));      //返回bool值 true
  print(person.containsKey('height'));

  
}