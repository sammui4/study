/*
 * @Author: w
 * @Date: 2021-06-22 21:15:08
 * @LastEditors: w
 * @LastEditTime: 2021-06-22 21:37:08
 */
// 可以增加String类型的数据，也可以增加string类型的数据。但是每次调用增加的类型要统一
class  MyList<T> {
  List list = <T>[];
  void add(T value){
    this.list.add(value);
  }
  List getList(){
    return list;
  }
}
void main() {
  MyList l1 = MyList();     // 这样表示T为任意类型
  l1.add(1);
  l1.add(true);
  l1.add('234');
  print(l1.getList());

  MyList l2 = MyList<String>();     //这样表示T为String
  l2.add('1');
  l2.add('12');
  l2.add('5');
  print(l2.getList());


}