/*
 * @Author: w
 * @Date: 2021-06-21 21:32:08
 * @LastEditors: w
 * @LastEditTime: 2021-06-21 22:36:20
 */
import 'db.dart';
import 'Person.dart';
class Mysql implements Db,Person{
  @override
  String uri;

  Mysql(this.uri);

  @override
  add(String data) {
    // TODO: implement add
    print('这是增加的'+data);
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  save() {
    // TODO: implement save
    throw UnimplementedError();
  }
  getInfo(){
    print('这是增加的'+this.uri);
  }

  @override
  int? age;

  @override
  String? name;
}