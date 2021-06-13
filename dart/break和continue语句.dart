/*
 * @Author: w
 * @Date: 2021-06-10 22:53:21
 * @LastEditors: w
 * @LastEditTime: 2021-06-10 23:00:53
 */
void main() {
  // for(var i=1;i<=10;i++){
  //   if(i==4){
  //     break;    // 跳出当前循环
  //   }
  //   print(i);
  // }

  // for(var i=10;i<=20;i++){
  //   if(i==14){
  //     continue;    // 跳出当前循环体，然后继续执行
  //   }
  //   print(i);
  // }


  for(var i=0;i<=10;i++){
    if(i==3){
      continue;
    }
    print('外面$i');
    for(var t=0;t<=10;t++){
      if(t==3){
        break;
      }
      print('---里面$t');
    }
  }

  var n = 1;
  while(n<=10){
    if(n==4){
      break;
    }
    n++;
  }
  print(n);
}