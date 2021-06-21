/*
 * @Author: w
 * @Date: 2021-06-14 21:54:37
 * @LastEditors: w
 * @LastEditTime: 2021-06-21 23:31:00
 */
class Rect{
  num height;
  num width;
  // 在构造函数体运行之前初始化实例变量
  Rect(num height,num width):height=2,width =10{
    this.height = height;
    this.width = width;
  }
  get area{
    return this.height*this.width;      // 直接通过访问属性的方法访问area
  }
  getArea(){
     return this.height*this.width;
  }
  set Areaheight(value){
    this.height = value;
  }
}

void main(){
  Rect r = new Rect(10, 4);
  r.Areaheight = 6;
  print("面积${r.area}");
  print("面积${r.getArea()}");
}