main() {
  var list = [1, 2, 3];
  assert(list.length == 2);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);

  var constrainList = const[1, 2, 3];
// constrainList[1]=1;// operasi ini akan menghasilkan error karena bersifat konstant.

  var list2 = [0,... list];
  assert(list2.length == 4);

  //operator ? digunakan sebagai null-aware spread operator.
  list=null;
  var list3 = [0,...?list];


  //collectional if
  var promoActivate = false;
  var nav= [
    'Home',
    'Forniture',
    'plants',
  if(promoActivate)'Outlet'
  ];

  //collection for

  var listOfInts =[1,2,3];
  var listOfStrings=[
    '#0',
    for(var i in listOfInts) '#$i'
  ];

  assert(listOfStrings[1] == '#1');



  ///fixed length list and initializing list variable
  var lst = new List<int>(4);
  lst[1]=2;
  lst[2]=4;
  print(lst.runtimeType);

  /// Growable List
    //inisialisasi
      var num_list = [1,2,3];
      // or
      var num_list2 = new List();

      num_list2.add(2);
      num_list2.add(12);



  }