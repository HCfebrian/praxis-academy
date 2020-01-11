# **ATM Machine**

**Class BalanceInquiry**

digunakan untuk menyimpan balance atm. menggunakan static variable dan static method sehingga tidak perlu melakukan instance untuk mengakses method atau variable.

**Class Deposit**

memiliki varibale static dan juga method get static sehingga tidak perlu melakukan instance untuk mengambil nilai. variable digunakan untuk menyimpan data deposit.

**Class Withdraw**

memiliki varibale static dan juga method get static sehingga tidak perlu melakukan instance untuk mengambil nilai. variable digunakan untuk menyimpan data jumlah uang yang akan diambil..


**fungsi depositMoney()**

untuk mengambil dan menampilkan nilai deposit

**fungsi checkBalance()**

untuk mengambil dan menampilkan nilai balance

**fungsi withDrawMoney()**

mengambil nilai balance dari kelas BalanceInquiry (static variable) dan menjalankan percapangan tergantung dengan berapa nilai balance yang diambil tadi.



**Main()**

fungsi yang dipanggil pertama kali saat menjalankan file dart.


dalam fungsi main terdapat komponen komponen yang diantaranya 

1. percabangan\
    penggunaan If-else sebagai percabangan.
2. error handeling \
    menggunakan try catch untuk menghendle error dan menampilkan pesan.
3. input console\
    input console menggunakan **stdin.readLineSync()** kemudian dilakukan **parse** agar sesuai dengan tipe data yang dicari (int atau double)
4. iterasi\
   perulangan menggunakan do while.
