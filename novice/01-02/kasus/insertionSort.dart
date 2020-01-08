main() {
  var key, j;
  var list = [7, 11, 6,7,8];

  for (int i =0; i < list.length; i++) {
    key = list[i];
    j = i;

    while (j > 0 && list[j - 1] > key) {
      list[j] = list[j - 1];
      j = (j-1);
    }
    list[j]=key;
  }
  print(list);
}
