/*
 * @Author: w
 * @Date: 2021-06-16 22:12:51
 * @LastEditors: w
 * @LastEditTime: 2021-06-16 22:26:57
 */

// 通过extends实现继承
// 子类可继承父类厘米可见的属性和方法。但是不会继承构造函数
class Person {
  String name='monk';
  num age = 20;
  void printInfo(){
    print('${this.name}===${this.age}');
  }
}
class Web extends Person{
  
}
void main() {
  Web w = new Web();
  print(w.name);
}