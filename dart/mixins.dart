/*
 * @Author: w
 * @Date: 2021-06-21 22:39:04
 * @LastEditors: w
 * @LastEditTime: 2021-06-21 23:10:37
 */

// mixins的类只能来自Object，不能继承其他类
// 作为mixins的类不能有构造函数
// 一个类可以mixins多个mixins类


// mixins的实例类型是什么？
// 其超类的子类型

class Person{
  String name;
  num age;
  Person(this.name,this.age);
  printInfo(){
    print('${this.name}---${this.age}');
  }
  void fun(){
    print('跑路Person');
  }
}
class A{
  String info = 'this is A';
  void printA(){
    print('A');
  }
  void run(){
    print('跑路A');
  }
}

class B{
  void printB(){
    print('B');
  }
  void run(){
    print('跑路B');     //后面的把前面的覆盖了
  }
}

class C extends Person with A,B{
  C(String name, num age) : super(name, age);
  
}
void main() {
  C c = new C('monk',20);
  c.printB();
  print(c.info);
  c.printInfo();
  c.run();

  print(c is Person);
  print(c is A);
  print(c is B);
}