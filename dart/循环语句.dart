/*
 * @Author: w
 * @Date: 2021-06-10 22:41:27
 * @LastEditors: w
 * @LastEditTime: 2021-06-10 22:52:38
 */

void main() {
  int i=1;
  int n =1;
  int sum = 0;
  // while和do while的区别
  while(i<=100){
    sum+=i;
    i++;
  }
  print(sum);

  int sum1 =0;
  do{
    sum1+=n;
    n++;

  }while(n<=100);
   print(sum1);

  // 区别：第一次循环条件下不成立的情况下,while不执行，do while还是会先执行
  int i1 =19;
  while(i1<2){
    print('执行代码');
  }

  int i2 = 10;
  do{
    print('执行do while');
  }while(i2<2);
}