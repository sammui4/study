/*
 * @Author: w
 * @Date: 2021-06-08 22:28:00
 * @LastEditors: w
 * @LastEditTime: 2021-06-08 22:31:09
 */
//is 关键词
void main() {
  var a = '123';
  var b = ['123'];
  if(a is String){
    print('字符串');
  }else{
    print('其他类型');
  };


  if(b is List){
    print('数组');
  }else{
    print('其他类型');
  };

}