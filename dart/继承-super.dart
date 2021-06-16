/*
 * @Author: w
 * @Date: 2021-06-16 22:27:15
 * @LastEditors: w
 * @LastEditTime: 2021-06-16 22:43:00
 */
class Person {
  String name;
  num age;
  Person(this.name,this.age);
  void printInfo(){
    print('${this.name}===${this.age}');
  }
}
class Web extends Person{
  var sex;
  Web(String name, num age,String sex) : super(name, age){
    // 继承的实例化
    this.sex = sex;
  }
  run(){
    print('${this.name}===${this.age}');
  }
  
}
void main() {
  Person P = new Person('monk',23);

  Web w = new Web('eee',35,'男');
  w.printInfo();
  w.run();
}