/*
 * @Author: w
 * @Date: 2021-06-14 17:55:12
 * @LastEditors: w
 * @LastEditTime: 2021-06-22 23:49:55
 */
class Person{
  String name;
  int age;
  // 自定义类的默认构造函数
  // Person(String name,int age){
  //   this.name = name;
  //   this.age = age;
  // }

  // 可以定义多个命名构造函数
  Person.now(){
    print('命名构造函数');
  }
  Person.setInfo(String name,int age){
    this.name = name;
    this.age = age;
  }
  // 也可以使用简写方法,相当于解构
  Person(this.name,this.age);

  void getInfo(){
    print("${this.name}----${this.age}");
  }

}