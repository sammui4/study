/*
 * @Author: w
 * @Date: 2021-06-16 21:56:55
 * @LastEditors: w
 * @LastEditTime: 2021-06-16 22:10:07
 */
import 'lib/Person.dart';
void main() {
  Person p1 = new Person('monk', 28);
  // p1?.getInfo();


  // 链式编程(连缀操作)
  p1..name = 'monk'
    ..age = 40
    ..getInfo();
}