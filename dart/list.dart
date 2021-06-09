/*
 * @Author: w
 * @Date: 2021-06-08 21:43:10
 * @LastEditors: w
 * @LastEditTime: 2021-06-08 22:18:23
 */
void main() {
  // 创建数组的方式一
  var li1 = ['monk',28,false];
  print(li1);
  print(li1.length);
  print(li1[1]);

  // 创建数组的方式二(指定类型)
  var li2 = <String>['123','456'];
  print(li2);

  // 第三种，定义空数组,然后通过add增加。通过[]创建的集合，容量是可以变化的
  var li3 = [];
  li3.add(1);
  li3.add('2');
  li3.add(false);
  print(li3);

  // 第四种创建集合的方法
  // 第一个参数是数组长度，第二个是填充内容.用于创建一个固定长度的集合，无法修改集合的个数，直接通过.length更改长度也不行
  var li4 = List.filled(2, '1');
  print(li4);
  // li4.add('3');
  // li4.length = 3;


  var li5 = [];
  li5.add(1);
  li5.length = 2;
  print(li5);


  // 指定类型
  var li6 = List<double>.filled(2,3.4);     // 不写也会进行类型推导
  print(li6);
  // li4.add('3');
  // li4.length = 3;
}