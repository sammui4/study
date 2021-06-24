/*
 * @Author: w
 * @Date: 2021-06-21 20:51:17
 * @LastEditors: w
 * @LastEditTime: 2021-06-22 21:47:46
 */

// 抽象类用于约束子类方法，用于定义标准
// 抽象类不能实例化，只有继承它的之类可以
// 如果把抽象类当作接口实现的话必须得实现抽象类里面定义的所有属性和方法

// 多态：父类定义一个方法不去实现，让继承它的之类去实现，每个子类有不同的表现。




// extends抽象类和implements区别
// 要复用抽象类里面的方法，就用extends继承抽象类
// 只是当作标准的话，就用implements实现抽象类
abstract class Animal{
  eat();      // 没有方法体的方法叫做抽象方法,子类继承抽象类必须得实现里面的抽象方法
  printInfo(){
    print('普通方法');
  }            // 非抽象方法
}

class Dog extends Animal{
  @override
  eat() {
    // TODO: implement eat
    print('吃肉');
  }
  run(){
    print('跑路');
  }
}

class Cat extends Animal{
  @override
  eat() {
    print('跳楼');
  }

}

void main(){
  //
  Dog d = new Dog();
  d.eat();
  d.run();
  d.printInfo();

  Cat c = new Cat();
  c.eat();

  // 子类只能使用父类的方法，如下定义
  Animal e = new Dog();
  e.eat();
  // e.run();    //没有这个方法了


}