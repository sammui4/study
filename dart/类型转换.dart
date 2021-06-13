/*
 * @Author: w
 * @Date: 2021-06-10 21:25:00
 * @LastEditors: w
 * @LastEditTime: 2021-06-10 22:41:11
 */
void main(){
  String str = '123';
  String str2 = '123.1';

  // 字符串转换成数字
  var myNum = int.parse(str);
  var myNum2= double.parse(str2);
  print(myNum is int);
  print(myNum2 is double);

  int nums = 123;
  String str3 = nums.toString();
  print(str3 is String);



  // isEmpty：判断字符串是否为空
  var str4 = '';
  if(str4.isEmpty){
    print('str是空的');
  }


  // 在赋值运算中，++ --写在前面，先运算，再赋值。写在后面，先赋值后运算
  var add1 = 10;
  var add2 = ++add1;
  var add3 = 10;
  var add4 = add3++;
  print(add1);
  print(add2);
  print(add3);
  print(add4);
}

