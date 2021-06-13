/*
 * @Author: w
 * @Date: 2021-06-10 20:20:48
 * @LastEditors: w
 * @LastEditTime: 2021-06-10 21:12:19
 */
void main() {
  int a = 14;
  int b = 5;

  print(a % b); // 取余
  print(a ~/ b); // 取整

  // 如果c为空的话，把23赋值给d
  // int c = 10;
  // c ??= 23;
  // print(c);


  // += *=  /=  %=  ~/=

  // 条件表达式
  String sex = '1';
  switch(sex){
    case '男':
    print('性别是男');
    break;
    case '女':
    print('性别是女');
    break;
    default:
    print('参数错误');
    break;
  }

  var c;
  var d = c??10;
  print(d);
}
