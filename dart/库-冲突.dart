/*
 * @Author: w
 * @Date: 2021-06-22 23:43:39
 * @LastEditors: w
 * @LastEditTime: 2021-06-22 23:45:40
 */
import 'lib/Person.dart';
import 'lib/Person1.dart' as lib;

main() {
  Person p1 = new Person('mono',20);
  p1.getInfo();
  lib.Person p2 = new lib.Person('monk',40);
  p2.getInfo();
}