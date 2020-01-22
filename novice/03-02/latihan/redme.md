## **parse_json_into_background**

#### fetchPhotos()

digunakan untuk mengambil respon berupa file json dari http link.\
melakukan return berupa Compute() yang memiliki 2 parameter. yaitu metode parsePhoto, dan respon dari json.

#### List\<Photo> parsePhoto() 
parameter pertama merupakan fungsi yang digunakan untuk pemetaan data body json ke tipe data costom(dalam hal ini Photo)

factory Photo.fromJson(Map<String,dynamic> json){
    digunakan untuk konfersi dari masing masing key json sesuai dengan tipe data masing masing.

pada Widget Build menggunakan futureBuilder karena menunggu respon dari http client.
