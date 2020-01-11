import 'dart:collection';
main(){
  ///inisialisasi dan pemanggilan value variable.
  var halogens = {'fluorine','chlorine','bromine'};
  //or
  var halogens2 = new Set();
  halogens2.add(30);
  halogens2.add(40);
  halogens2.add(50);
  halogens2.add(60);
  print(" default implementation ${halogens2.runtimeType}");

  for(var no in halogens2){
    print(no);
  }

  /// HashMap
  //identifier dan pemanggilan value
  var accounts = new HashMap();
  accounts['dept']='HR';

}