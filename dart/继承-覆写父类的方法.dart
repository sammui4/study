/*
 * @Author: w
 * @Date: 2021-06-16 22:44:03
 * @LastEditors: w
 * @LastEditTime: 2021-06-21 23:50:43
 */
class Person {
  String name;
  num age;
  // Person(this.name,this.age);
  Person.xxx(this.name,this.age);
  void printInfo(){
    print('${this.name}===${this.age}');
  }
  work(){
    print("${this.name}在大公国了");
  }
}
class Web extends Person{
  var sex;
  // Web(String name, num age,String sex) : super(name, age){      // 通过super关键字把参数传给父类
  Web(String name, num age,String sex) : super.xxx(name, age){      // 通过super关键字把参数传给父类
    // 继承的实例化
    this.sex = sex;
  }
  run(){
    super.work();   //调用父类的方法
    print('${this.name}===${this.age}===${this.sex}');
  }
  // 覆写父类的方法，直接写
  @override               //建议加上
  void printInfo(){
    print('覆写成功！');
  }
}
void main() {
  Web w = new Web('eee',35,'男');
  w.printInfo();
  w.run();
}