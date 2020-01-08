# **basicDartProgram.dart**

**main()**

adalah fungsi yang dipanggil pertamakali dalam pemrograman dart.
dalam file ini fungsi main memanggil fungsi **printInteger()** dengan vatiable **'number'**.

**printInteger(int aNumber)** 

adalah fungsi buatan sendiri dengan parameter integer. 
program fungsi ini memberi perintah untuk output string ke konsole dengan isi variable **aNumber**.

pemanggilan variable dapat dilakukan didalam string dengan tanda **$**.


# **controlFlow.dart**

**for()**

penulisan for dapat menggunakan penulisan normal 
*contoh:*

for (int i; i<10;i++>)

atau bisa juga menggunakan format penulisan forEach:
*contoh:*

for (var x in collection)

**continue;** 

dapat digunakan untuk men-skip ke iterasi berikutnya. 

atau bila dalam **switch case** dapat digunakan untuk melompat ke bagian **case** yang lain (seperti goto pada bahasa C )


# **excaption.dart**

**try{ }**

program yang terdapat didalam kurung kurawal try akan dijalankan. dan apabila ada eror excaption maka error akan dikirim ke fungsi **catch()**.

**catch(e) { }**

program didalam kurung kurawal akan dijalankan bila terdapat error. 
selain itu variable e akan menampung jenis exaption yang dialami oleh **try{ }**.

**finally { }**

program dalam kurung kurawal akan dijalankan terlepas ada tidaknya excaption pada try. 


# **function.dart**

**Named Parameter**

adalah tipe penulisan parameter fungsi yang menggunakan nama untuk mengidentifikasi valuenya.
selain itu bisa pula dilakukan inisialisasi default value.

*contoh:* \
 somefunction({bool ninja = ture}) 

*cara memanggil:*\
someFunction(ninja: false)

**Positional Parameter**


tipe penulsisan parameter biasa
anotherFunction(bool firstParameter,  int secondParameter)

**Lamda Expression**

menggunakan lamda expression (=>) untuk mempersingkat penulisan fungsi.


# **Operator.dart**

b = ++a\
ditambah dulu baru diisikan ke variable b

b = a++\
diisikan ke variable dulu baru ditambah 1

b ??= 3\
memberi nilai b, bila b bernilai null. jika tidak maka nilai b tetap.

# **tipeData.dart**

**var** 

digunakan untuk mendeklarasikan variable tanpa harus menyebutkan spesifik tipedatanya

value dari tipe data apabila tidak diseting akan bernilai null. sekalipun tipe data numerik

**map**

berisi key dan value.
pemanggilan data dapat dilakukan dengan menuliskan nama variable map dan nama key valuenya.



