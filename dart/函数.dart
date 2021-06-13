/*
 * @Author: w
 * @Date: 2021-06-13 14:41:29
 * @LastEditors: w
 * @LastEditTime: 2021-06-13 17:59:20
 */


//  也可以在外边定义
String getNum(){
  var myStr = '123';
  return myStr; 
}

void main() {
  
  int getNum1(){
    var myNum = 456;
    return myNum; 
  }
  var n = getNum();
  var n1 = getNum1();
  print(n);
  print(n1);


  // 定义一个方法，求值
  // 参数指定类型
  int sumNum(int n){
    var sum = 0;
    for(var i=1;i<=n;i++){
      sum+=i;
    }
    return sum;
  };

  var n2 = sumNum(100);
  print(n2);


  // 可选参数,这里的age就是可以不填的，但是默认参数一定要有
  String printUserInfo(String userName,[int age = null,String sex = '']){
    var str = '姓名:$userName----';
    if(age!=null){
       str+="年龄:$age----";
    }else{
      str+="年龄保密----";
    }
    if(sex!=null){
       str+="性别:$sex";
    }else{
      str+="性别保密";
    }
    return str;
  }
  print(printUserInfo('monk',28));


  // 定义一个命名参数的方法
  String printUserInfo2(String userName,{int age = null,String sex = ''}){
    var str = '姓名:$userName----';
    if(age!=null){
       str+="年龄:$age----";
    }else{
      str+="年龄保密----";
    }
    if(sex!=null){
       str+="性别:$sex";
    }else{
      str+="性别保密";
    }
    return str;
  }
  print(printUserInfo2('monk',age:28,sex:'男'));


  // 把fang'h
}