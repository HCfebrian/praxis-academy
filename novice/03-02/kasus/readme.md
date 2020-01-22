# **todo_list**

digunakan sebagai aplikasi todo list sederhana.
tujuan utamanya adalah menggunakan data dari json untuk kemudian
diubah menjadi list. list tersebut akan digabungkan dengan chackbox

### **HomePage**

homepage mengextends statefulWidget

seperti biasa dlam oncreate state dia akan memanggil 
*HomePageState*

#### **HomePageState**

homePageState mengextends State<HomePage>

terdapat dua variable yang diletakkan di *HomePageState*

1. List data\

dan 

2. List \<bool> val


 *List Data*\
digunakan untuk menyimpan data list yang diambil dari Json.

*list \<bool> val*\
digunakan untuk menyimpan data mana saja yang sudah dicentang oleh user.


*getData()*\
adalah metode asynchronous 
 di dalamnya terdapat variable response yang menunggu respon dari link http.
 
 *setState() 
 dijalankan setelah mendapat respon dari http\
 respon tersebut akan dimasukkan ke dalam List data. dan banyaknya data akan digunakan untuk inisialisasi varibale List\<bool> val;
 
 
#### **Widget build**

 seperti pada widget lainnya akan ada widget build untuk membangun tampilan widget.
 
 bada bagian body menggunakan *ListView.Builder* untuk mengubah data list menjadi ListView.
 
 widget build mengembalikan metode 
 
row karena terdapat bagian list dan *chackbox*. keduanya di-wrap dengan *Expended* untuk menentukan pembagian luas view.
