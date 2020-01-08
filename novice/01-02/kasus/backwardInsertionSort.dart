main() {
  var key, j;
  var list = [7, 11, 6, 7, 8];
  for (int i = list.length - 1; i >= 0; i--) {
    key = list[i];
    j = i + 1;
    while (j < list.length && key > list[j]) {
      list[j - 1] = list[j];
      j = j + 1;
    }
    list[j - 1] = key;
  }
  print(list);
}
