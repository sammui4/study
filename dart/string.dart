/*
 * @Author: w
 * @Date: 2021-06-08 21:30:46
 * @LastEditors: w
 * @LastEditTime: 2021-06-08 21:37:16
 */
void main(){

  // 三个引号的可以输出多行字符串
  String one = '''
  multi
  multio
  ''';
  print(one);


  // 字符串拼接
  String two = 'two';
  String three = 'three';
  print("$two $three");
  print(two + three);
}