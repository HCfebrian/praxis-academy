main(){
    var listA = [1,2,3,4,5];
    var listB = [6,3,8,9,15];
    print(findMatch(listA, listB));
}

bool findMatch(var listA, var listB){
  urut(listA);
  urut(listB);
  var i=0;
  var j=0;
  while(i <= (listA.length-1)&& j<=(listB.length-1)){
    if (listA[i] < listB[j]){
      i = i+1;
    }
    else if (listA[i]>listB[j]){
      j=j+1;
    }
    else {
      return true;
    }
  }
  return false;
}

void urut(var list){
  var key,j=0;
  for (int i = list.length - 1; i >= 0; i--) {
    key = list[i];
    j = i + 1;
    while (j < list.length && key > list[j]) {
      list[j - 1] = list[j];
      j = j + 1;
    }
    list[j - 1] = key;
  }
}