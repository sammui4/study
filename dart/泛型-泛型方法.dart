/*
 * @Author: w
 * @Date: 2021-06-22 20:54:16
 * @LastEditors: w
 * @LastEditTime: 2021-06-22 21:10:50
 */

// 泛型解决类、接口、方法复用问题，以及对不特定数据类型的支持（类型校验）

// 对传入参数和返回参数都校验
T getData<T>(T value){
  print(value);
    return value;
}

getData2<T>(T value){
  print(value);
    return value;
}
void main() {
  getData<String>('有点意思');
  getData<int>(123);



}