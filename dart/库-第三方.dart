/*
 * @Author: w
 * @Date: 2021-06-22 23:09:47
 * @LastEditors: w
 * @LastEditTime: 2021-06-22 23:41:47
 */
// 1.从https://pub.dev/packages找到库要用的文件
// 2.创建一个pubspec.yaml文件，内容如下
// name:XXX
// description:A new flutter module project
// 3.配置dependencies
// 4.运行pub get，获取远程库
// 5.看文档怎么入库使用

import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url =
      Uri.https('api.douban.com', '/v2/movie/in_theaters', {'q': '{http}'});

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}