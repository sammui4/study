/*
 * @Author: w
 * @Date: 2021-06-08 21:43:10
 * @LastEditors: w
 * @LastEditTime: 2021-06-12 16:33:36
 */

/*
//  常用属性和方法
    常用属性
    length        长度
    reversed      倒序排序
    isEmpty       为空
    isNotEmpty    
    常用方法
    add           增加
    addAll        拼接数组
    indexOf       查找      传入具体值
    remove        删除      传入具体值
    removeAt      删除      传入索引值
    fillRange     修改
    insert(index,value)     指定位置插入
    insertAll(index,list)   指定位置插入List
    toList()                其他类型转换成List
    join()        List转换成字符串
    split()       字符串转化成List
    for
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


  List myList = ['香蕉','苹果','西瓜'];
  print(myList.reversed);
  var newMyList = myList.reversed.toList();
  print(newMyList);


  // 增加（单个）
  myList.add('桃子');   //只能增加一个
  // 增加（多个）
  myList.addAll(['葡萄','荔枝']);   //拼接数组
  print(myList);
  
  // 删除值（传入具体值）
  myList.remove('葡萄');
  print(myList);
  // 删除值（传入索引）
  myList.removeAt(myList.length-1);
  print(myList);


  // 替换（修改）值
  myList.fillRange(1, 2,'aaa');
  print(myList);
  myList.fillRange(2, 4,'bbb');
  print(myList);


  // 插入一个
  myList.insert(0, 'ccc');      //插入位置，插入内容
  print(myList);
  // 插入多个
  myList.insertAll(1, ['ddd','eee']);
  print(myList);

  var str1 =   myList.join('-');
  print(str1);
  print(str1 is String);

  var myList2 = str1.split('-');
  print(myList2);
  print(myList2 is List);

  
}