# hell_world

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# **Hello World**

adalah project untuk perkenalan dengan komponen komponen flutter.


## **main.dart**
file main.dart yang terletak di folder

    hello_world\lib\

merupakan file yang dijalankan pertama dan merupakan komponen utama dalam Flutter.

### **import**
digunakan untuk mengimport file dart lain agar digunakan


### **void main()**
void main adalah metode yang dipanggil pertamakali saat aplikasi berjalan. didalam aplikasi tersebut menjalankan *runApp(MyApp())*


### **MyApp**
class MyApp melakukan Extends ke StatelessWidget.
widget ini adalah akar dari aplikasi.
didalamnya melakukan build title, tema dan isi home. 

**title** berisi judul aplikasi yang diisikan dengan input String

**theme** berisikan seting tema aplikasi

**home** berisikan RandomWords() yang memanggil kelas randomWords.

### **RandomWords** 
RandomWords meng-*extends* class State\<RandomWords> \
berfungsi untuk membuat state
dan memanggil RandomWordsState();

### **RandomWordsState**
RandomWordsState meng-*extends* class State\<RandomWords> \
melakukan beberapa deklarasi variable final private.


### **build**
digunakan untuk mem-*build* widget
berisikan title, action ,dan body

### **buildSugetion()**

merupakan metode private yang dipanggil di body *build*\
digunakan untuk menambahkan data dari generateWordPairs ke dalam sugestions dan menampilkannya di _buildRow();

### **buildRow**
digunakan untuk mendefinisikan setiap listTile. 

