void main(){
var inList =[0,1,2,3,4,5,6];

print(indexEqualValue(inList, 0,inList.length-1));

}

double indexEqualValue(var list, var st ,var end){

  print('start $st');
  print('end $end');
  if (st >end){
    return -1;
  }
  var mid = (st+end)/2;
  if (list[mid.toInt()] > mid){
    return indexEqualValue(list, st, (mid-1));
  }
  else if (list[mid.toInt()]< mid)
    return indexEqualValue(list, mid+1, end);
  else return mid.toDouble();

}