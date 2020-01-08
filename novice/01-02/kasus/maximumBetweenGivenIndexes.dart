main(){
  
  var list=[1,3,4,2,3,5,3,2];
  print(maxValue(list, 0, 7));

}
int maxValue(var list, var p , var r){
    var max;
    max = p;
    for(int i=p+1; i <= r; i++ ){
      if (list[i]>list[max]){
        max = i;
      }
    }
    return max;
  }