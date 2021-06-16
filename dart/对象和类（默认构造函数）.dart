/*
 * @Author: w
 * @Date: 2021-06-14 15:19:56
 * @LastEditors: w
 * @LastEditTime: 2021-06-14 17:35:27
 */

// 类的命名，首字母要大写
class Person{
  String? name;
  int? age;
  // 自定义类的默认构造函数
  // Person(String name,int age){
  //   this.name = name;
  //   this.age = age;
  // }

  // 也可以使用简写方法,相当于解构
  Person(this.name,this.age);

  void getInfo(){
    print("${this.name}----${this.age}");
  }
  void setInfo(int age){
    this.age = age;
  }
}

void main() {
  // 实例化

  Person p1 = new Person('monk',28);
  p1.getInfo();
  p1.setInfo(28);
}