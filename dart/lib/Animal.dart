/*
 * @Author: w
 * @Date: 2021-06-14 17:55:12
 * @LastEditors: w
 * @LastEditTime: 2021-06-14 18:28:22
 */
class Animal{
  // 必须抽离出去，并且加下划线，才能定义为私有
  String? _name;      // 私有属性
  int? age;
  // 自定义类的默认构造函数
  // Animal(String _name,int age){
  //   this._name = _name;
  //   this.age = age;
  // }

  // 可以定义多个命名构造函数
  Animal.now(){
    print('命名构造函数');
  }
  Animal.setInfo(String name,int age){
    this._name = name;
    this.age = age;
  }
  // 也可以使用简写方法,相当于解构
  Animal(this._name,this.age);

  void getInfo(){
    print("${this._name}----${this.age}");
  }
  getName(){
    return this._name;
  }
  void _run(){
    print('这是一个私有方法');
  }
  execRun(){
    this._run();      //类里面的方法调用
  }
}