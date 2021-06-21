/*
 * @Author: w
 * @Date: 2021-06-14 18:05:51
 * @LastEditors: w
 * @LastEditTime: 2021-06-14 18:28:40
 */

// 没有public、private、protected这些访问修饰符
// 但是可以使用 _ 来把一个属性或者方法定义成私有。

import 'lib/Animal.dart';
void main() {
  Animal dog = new Animal('dog', 1);
  // print(dog._name);
  dog.execRun();
}