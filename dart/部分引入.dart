/*
 * @Author: w
 * @Date: 2021-06-22 23:53:13
 * @LastEditors: w
 * @LastEditTime: 2021-06-22 23:56:02
 */

// 部分引入，模式1，使用show关键字，只导入库的一部分
// import 'lib/partImpot.dart' show getName,getAge;
// 模式2,隐藏不需要的部分
import 'lib/partImpot.dart' hide getSex;
void main() {
  getName();
  getAge();
}