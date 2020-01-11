class GenericClass<T>{
  T ob;
  GenericClass(T o){
    ob = o;
  }

  T getob(){
    return ob;
  }

  void showType(){
    print("Type of T is ${ob.runtimeType}");
  }


}

main(){
  GenericClass iOB= new GenericClass(88);

  iOB.showType();

  var v = iOB.getob();
  print("value: ${v}");

  GenericClass strOB = new GenericClass("Generic Test");
  strOB.showType();

  var str = strOB.getob();
  print(str);


}