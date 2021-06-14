/*
 * @Author: w
 * @Date: 2021-06-14 00:24:38
 * @LastEditors: w
 * @LastEditTime: 2021-06-14 00:33:03
 */


void main() {
  fn(){
    var a= 123;
    return(){
      a++;
      print(a);
    };
  }

  var b = fn();
  b();
  b();
  b();
}