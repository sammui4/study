/*
 * @Author: w
 * @Date: 2021-06-12 17:25:14
 * @LastEditors: w
 * @LastEditTime: 2021-06-12 17:59:55
 */
void main() {
  List myList = [1,2,3];
  // for(var i=0;i<myList.length;i++){
  //   print(myList[i]);
  // }

  // for(var item in myList){
  //   print(item);
  // }

  myList.forEach((value) {
    print('${value}');
  });


  var myList1 = myList.map((e) => e+1).toList();
  print(myList1);

  
  // where 满足条件的返回到一个新的集合
  List myList2 = [1,2,3,4,5,6,7,8,9];
  var newList = myList2.where((element) => element>5);
  print(newList.toList());

  // any  有一个符合就返回trye
  var boolean = myList2.any((element) => element>5);
  print(boolean);

  // 每一个都要满足条件
  var boolean1 = myList2.every((element) => element>1);
  print(boolean1);


  var s= new Set();
  s.addAll([11,22,333]);
  s.forEach((element) =>print(element));

  Map person = {
    "name":"张三",
    "age":30,
  };
  
  person.forEach((key, value) {
    print("${key}--$value");
  });
}
