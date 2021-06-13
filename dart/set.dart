/*
 * @Author: w
 * @Date: 2021-06-12 16:34:03
 * @LastEditors: w
 * @LastEditTime: 2021-06-12 16:49:18
 */
// 没有顺序且不能重复的集合，所以不能通过索引去获取值
// 主要功能就是去除数组重复内容
void main(){
  var s = new Set();
  // var s = [];
  s.add('香蕉');
  s.add('香蕉');
  s.add('苹果');

  print(s);     //  {香蕉，苹果}
  print(s.toList());

  // 去重
  var myList = ['香蕉','苹果','西瓜','香蕉','苹果','西瓜','香蕉','苹果','西瓜'];
  var s1 = new Set();
  s1.addAll(myList);
  print(s1);
  var myList2 = s1.toList();
  print(myList2);

  
}