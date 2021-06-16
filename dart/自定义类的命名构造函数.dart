/*
 * @Author: w
 * @Date: 2021-06-14 17:47:05
 * @LastEditors: w
 * @LastEditTime: 2021-06-14 17:52:50
 */
class Person{
  String? name;
  int? age;
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

void main() {
  Person p1 = new Person('monk',29);    // 默认实例化类的时候调用的是 默认构造函数
  Person p2 = new Person.now();
  Person p3 = new Person.setInfo('w',30);
  p3.getInfo();
}