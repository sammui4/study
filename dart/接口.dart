/*
 * @Author: w
 * @Date: 2021-06-21 21:20:48
 * @LastEditors: w
 * @LastEditTime: 2021-06-21 21:37:17
 */

import 'lib/mysql.dart';
void main() {
  Mysql mysql = new Mysql('1');
  mysql.add('2');
  mysql.uri = '30';
  mysql.getInfo();

   Mysql mysql1 = new Mysql('1');
  mysql1.add('2');
  mysql1.getInfo();
}