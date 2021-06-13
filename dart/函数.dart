/*
 * @Author: w
 * @Date: 2021-06-13 14:41:29
 * @LastEditors: w
 * @LastEditTime: 2021-06-14 00:23:26
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


  // 箭头函数
  var fn1 = ()=>{
    print('1')        //只能写1行
  };
  fn1();


  // 自执行方法
  ((int n){
    print(n);
  })(12);


  // 递归
  var sum = 1;
  fn2(int n){
    sum*= n;
    if(n==1){
      return;
    }
    fn2(n-1);
  }
  fn2(5);
  print(sum);


  var sum3 = 0;
  fn3(int n){
    sum3+=n;
    if(n==0){
      return;
    }
    fn3(n-1);
  }

  fn3(100);
  print(sum3);
}