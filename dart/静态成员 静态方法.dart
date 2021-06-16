/*
 * @Author: w
 * @Date: 2021-06-16 21:22:55
 * @LastEditors: w
 * @LastEditTime: 2021-06-16 21:33:30
 */
class Person{
  // 类的属性
  static String name = '张三';
  // 类的方法
  static void show(){
    print(name);
  }
  int age = 20;
  void getUserInfo(){
    print(name);
    print(this.age);
    print(age);
    show();
  }
}

main(){
  var p = new Person();
  // p.show()
  Person.show();
  print(Person.name);
  p.getUserInfo();
}