/*
 * @Author: w
 * @Date: 2021-06-22 21:37:44
 * @LastEditors: w
 * @LastEditTime: 2021-06-24 19:09:45
 */

// 定义一个泛型接口，约束实现它的子类有某些方法
// 要求setByKey的时候的value的类型和实例化子类的时候指定的类型一致
abstract class ObjectCache {
 getByKey(String key);
 void setByKey(String key,Object value); 
}

abstract class StringCache {
 getByKey(String key);
 void setByKey(String key,String value); 
}

abstract class Cache<T> {
 getByKey(String key);
 void setByKey(String key,T value); 
}


class FileCache<T> implements Cache<T>{
  @override
  getByKey(String key) {

  }
  
  @override
  void setByKey(String key, T value) {
    print('文件写入${value}');
  }

}


class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
  }
  
  @override
  void setByKey(String key, T value) {
    print('内存写入${value}');
  }
  
}


void main() {
  MemoryCache m = new MemoryCache<String>();
  // m.setByKey('index', 123);    //报错
  m.setByKey('index', '123');
}