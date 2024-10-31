import 'package:belajar_dart/belajar_dart.dart' as belajar_dart;

// DART FUNDAMENTAL

// 1
// void main(List<String> arguments) {
//   print('Hello world: ${belajar_dart.calculate()}!');
// }


// 2 Comments
// /// Fungsi [main] akan menampilkan 2 output
// /// Output pertama menampilkan teks dan output kedua menampilkan hasil perkalian pada fungsi [calculate]
// void main(List<String> arguments) {
//   // Mencetak Hello Dart! Dart is great. pada konsol
//   print('Hello Dart! Dart is great.');
//   // Testing documentation comment with [].
//   print('6 * 7 = ${calculate()}');
// }
//
// int calculate() {
//   return 6 * 7;
// }
//
// /// Output:
// /// Hello Dart! Dart is great.
// /// 6 * 7 = 42


// 3 Variables
// void main() {
//   var myAge; myAge = 20;
//   var greetings = 'Hello Dart!';
//   print(greetings);
//   print(myAge);
// }


// 4 Data Types

// 4.1 nilai variabel dengan var akan secara otomatis menetukan tipe data

// var greetings = 'Hello Dart!';  // String
// var myAge = 20;                 // integers

// Kode diatas secara otomatis komputer akan tahu bahwa variable greetings
// memiliki nilai berupa String atau teks.

// myAge bernilai angka atau integers meskipun kita tidak mendefinisikannya
// lebih lanjut.

// Agar memudahkan proses debugging sebaiknya kita deklerasikan tipe data
// secara eksplisit.

// contoh :
// String greetings = 'Hello Dart!';
// int myAge = 20;


// 4.2 inisialisasi dimana x akan mendeteksi variabel

// void main() {
//   var x; // dynamic
//   x = 7;
//   x = 'Dart is great';
//   print(x);
// }

// x diatas merupakan tipe dynamic. Dynamic bisa berisi tipe apa pun, maka tidak masalah jika kita mengubah nilai di dalamnya

// void main() {
//   var x = 7; // int
//   x = 'Dart is great'; // Kesalahan assignment
//   print(x);
// }

// Jika kita menginisialisasi nilai var x secara langsung, editor akan menampilkan eror karena terjadi perubahan tipe data.

// import 'dart:io';
//
// void main() {
//   stdout.write('Nama Anda : ');
//   String name = stdin.readLineSync()!;
//   stdout.write('Usia Anda : ');
//   int age = int.parse(stdin.readLineSync()!);
//   print('Halo $name, usia Anda $age tahun');
// }

// Statement print() dan stdout.write() memiliki fungsi yang sama yaitu untuk
// menampilkan suatu objek ke konsol

// print() akan mencetak baris baru setelah menampilkan sesuatu sehingga
// selanjutnya Anda perlu memasukkan input pada baris baru.

// stdout.write() hanya menampilkan objeknya saja dan ketika ada input atau
// output baru lagi masih akan ditampilkan di baris yang sama.

// tanda ! setelah stdin.readLineSync() untuk menandai bahwa input tidak akan
// mengembalikan nilai null.


// 5. Number

// 5.1 Penjelasan

// Tipe data Dart ada dua jenis yaitu : int dan double.
// int adalah bilangan bulat,
// double adalah bilangan desimal.
//
// var number = 2020;
// var hex = 0xDEADBEEF;
// var decimal = 1.2;
// var pi = 3.14;
// double withoutDecimal = 7; // Sama dengan double withoutDecimal = 7.0
//
// Int dan double adalah subtipe dari tipe data num

// 5.2 Contoh konversi

// void main() {
//   // String -> int
//   var eleven = int.parse('11');
//   print(eleven.runtimeType);
//
//   // String -> double
//   var elevenPointTwo = double.parse('11.2');
//   print(elevenPointTwo.runtimeType);
//
//   // int -> String
//   var elevenAsString = 11.toString();
//   print(elevenAsString.runtimeType);
//
//   // double -> String
//   var piAsString = 3.14159.toStringAsFixed(2); // String piAsString = '3.14'
//   print(piAsString.runtimeType);
// }
//


// 6. Strings

// String singleQuote = 'Ini adalah String';
// String doubleQuote = "Ini juga String";
//
// String digunakan untuk menyimpan data dalam bentuk teks.
// String pada Dart dapat didefinisikan dengan menggunakan
// tanda petik satu maupun petik dua.
//
// Contoh 1
// void main() {
//   print('"What do you think of Dart?" he asked');
// }
//
// Dalam contoh 1 kita dapat menggunakan tanda petik secara bergantian,
// khususnya jika kita memiliki teks yang mengandung tanda petik.

// Contoh 2
// print('"I think it's great!" I answered confidently');

// Jika tanda petik seperti di atas kode akan menghasilkan eror,
// solusinya ialah menggunakan bentuk seperti ini;

// void main() {
//   print('"I think it\'s great!" I answered confidently');
// }

// penggunaan (\) ini disebut escape string berfungsi untuk mengurangi ambiguitas dalam tanda petik.

// contoh backslash lain
// void main() {
//   print("Windows path: C:\\Program Files\\Dart");
// }

// Fitur lain dari String adalah String interpolation di mana kita bisa memasukkan nilai dari variabel atau expression ke dalam string. Interpolation ini bisa kita terapkan dengan simbol $.

// void main() {
//   var name = 'Messi';
//   print('Hello $name, nice to meet you.');
//   print('1 + 1 = ${1 + 1}');
// }

// jika kita ingin menampilkan harga dalam dolar maka yang perlu kita lakukan ialah menambahkan backslash sebagai interpolation

// contoh
// void main() {
//   print(r'Dia baru saja membeli komputer seharga $1,000.00');
// }

// Huruf ‘r’ sebelum String akan memberitahu Dart untuk menganggap String sebagai raw, yang berarti akan mengabaikan interpolation.

// void main() {
//   print('Hi \u2665');
// }
//
// /// Output:
// /// Hi ♥
//
// Pada Dart Unicode ini dikenal dengan runes. Unicode mendefinisikan nilai numerik unik untuk setiap huruf, angka, dan simbol yang digunakan dalam semua sistem penulisan dunia. Cara umum untuk mengekspresikan unicode adalah \uXXXX, di mana XXXX adalah nilai heksadesimal 4 digit. Misalnya karakter hati (♥) adalah \u2665.

// 7. Booleans

// variabel boolean hanya bisa menyimpan dua nilai, yaitu true dan false.

// bool alwaysTrue = true;
// var alwaysFalse = false;
// var notTrue = !true;
// bool notFalse = !false;

// Tanda ! di atas disebut dengan operator “not” atau “bang”.
// true sama saja bernilai false.

// void main() {
//   if (true) {
//     print("It's true");
//   } else {
//     print("It's False");
//   }
// }
//
// /// Output:
// /// It's true


// 8. Operators

// 8.1 Operator Aritmatika

// var firstNumber = 4;

// Pada kode di atas kita menginstruksikan komputer untuk memasukkan nilai 4 ke dalam variabel firstNumber.

// void main() {
//   var firstNumber = 4;
//   var secondNumber = 13;
//   var sum = firstNumber + secondNumber;
//   print(sum);
// }

// selain +, -, *, dan / terdapat ~/ sebagai pembagian, mengembalikan nilai int dan % modulo atau sisa hasil bagi.

// contoh
// void main() {
//   print(5 + 2); // int add = 7
//   print(5 - 2); // int subtract = 3
//   print(5 * 2); // int multiply = 10
//   print(5 / 2); // double divide = 2.5
//   print(5 ~/ 2); // int intDivide = 2
//   print(5 % 2); // int modulo = 1
// }

// Operator aritmatika pada pemrograman memiliki aturan yang sama dengan matematika.

// contoh
// print(2 + 4 * 2); // output: 10
// print((1 + 3) * (4 - 2)); // output: 8

// Dart mendukung increment dan decrement. Contohnya adalah seperti berikut:

// var a = 0, b = 5;
// a++;
// b--;
// print(a); // output = 1
// print(b); // output = 4

// Expression a++ di atas dapat diartikan dengan a = a + 1. Komputer akan mengambil nilai dari a kemudian menambahkan 1 lalu memasukkannya kembali ke variabel a. Bentuk increment lainnya adalah seperti berikut:

// var c = 0;
// c += 5;    // c = c + 5 atau c = 0 + 5
// print(c);  // output 5

// Operator ini juga bisa digunakan pada operator aritmatika lain seperti perkalian dan pembagian.

// var d = 2;
// d *= 3;   // d = d * 3 atau d = 2 * 3
// print(d); // output = 6

// 8.2 Operator Perbandingan

// Operator	Deskripsi
// ==	Sama dengan
// !=	Tidak sama dengan
// >	Lebih dari
// <	Kurang dari
// >=	Lebih dari sama dengan
// <=	Kurang dari sama dengan

// Contoh
// void main() {
//   if (2 <= 3) {
//     print('Ya, 2 kurang dari sama dengan 3');
//   } else {
//     print("Anda salah");
//   }
// }
//
// /// Output:
// /// Ya, 2 kurang dari sama dengan 3

// 8.3 Operator logika

// ||	OR
// &&	AND
// !	NOT
//
// Operator AND akan menghasilkan nilai true jika semua operand-nya bernilai true, sedangkan OR jika salah satu saja dari operand bernilai true maka operator akan mengembalikan nilai true. Contohnya seperti kode berikut.

// void main() {
//   if (2 < 3 && 2 + 4 == 5) {
//     print('Untuk mencetak ini semua kondisi harus benar');
//   } else {
//     print(
//         '2 kurang dari 3, tapi 2 + 4 tidak sama dengan 5, maka ini akan tampil');
//   }
//
//   if (false || true || false) {
//     print('Ada satu nilai true');
//   } else {
//     print('Jika semuanya false, maka ini akan tampil');
//   }
// }
//
// /// Output:
// /// 2 kurang dari 3, tapi 2 + 4 tidak sama dengan 5, maka ini akan tampil
// /// Ada satu nilai true


// 9. Exceptions

// 9.1 Try, on, dan catch

// Exceptions adalah kondisi eror pada saat aplikasi berjalan (runtime)

// contoh exception

// void main() {
//   var a = 7;
//   var b = 0;
//   print(a ~/ b);
// }

// ouput exception yang terjadi :
//
// Unhandled exception:
// IntegerDivisionByZeroException
// #0 int.~/ (dart:core-patch/integers.dart:24:7)
// #1 main (file:///home/glot/main.dart:4:11)
// #2 _startIsolate.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:305:32)
// #3 _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:174:12)

// Contoh di atas memperlihatkan menurut prinsip matematika kita tidak bisa \
// membagi bilangan lain dengan bilangan nol (0)

// Untuk menangani exception, mari gunakan try dan catch.

// contoh try :
//
// void main() {
//   try {
//     var a = 7;
//     var b = 0;
//     print(a ~/ b);
//   }
// }

// Diketahui exception sebelumnya adalah IntegerDivisionByZeroException maka kita dapat memanfaatkan  keyword on untuk mengatasi ketika exception tersebut terjadi.

// void main() {
//   try {
//     var a = 7;
//     var b = 0;
//     print(a ~/ b);
//   } on Exception {
//     print('Can not divide by zero.');
//   }
// }

// Untuk menangani exception yang tidak diketahui secara spesifik, kita bisa menggunakan keyword catch setelah blok try.

// void main() {
//   try {
//     var a = 7;
//     var b = 0;
//     print(a ~/ b);
//   } catch (e) {
//     print('Exception happened: $e');
//   }
// }

// try digunakan untuk mencoba menjalankan suatu blok kode yang mungkin menghasilkan error.

// catch digunakan untuk menangkap error atau exception yang terjadi di dalam blok try, agar program tidak langsung berhenti dan Anda dapat mengatur apa yang harus dilakukan jika terjadi error.

// on: Digunakan untuk menangani exception tertentu berdasarkan tipe, seperti FormatException, IOException, dan lainnya.

// Exception happened: IntegerDivisionByZeroException
// // atau
// Unsupported operation: Result of truncating division is Infinity: 7 ~/ 0

// void main() {
//   try {
//     var a = 7;
//     var b = 0;
//     print(a ~/ b);
//   } catch (e, s) {
//     print('Exception happened: $e');
//     print('Stack trace: $s');
//   }
// }

// kita dapat menambahkan satu parameter lagi dalam catch, Blok catch dapat digabungkan dengan on. Catch akan menangkap apabila tidak ada exception yang memenuhi blok on yang terpasang.

// 9.2 finally

// void main() {
//   try {
//     var a = 7;
//     var b = 0;
//     print(a ~/ b);
//   } catch (e, s) {
//     print('Exception happened: $e');
//     print('Stack trace: $s');
//   } finally {
//     print('This line still executed');
//   }
// }

// finally : Blok finally dapat digunakan setelah catch, untuk mengeksekusi kode yang ingin selalu dijalankan, baik terjadi error maupun tidak.


// 10. Aplikasi Konversi Suhu

// import 'dart:io';
//
// void main() {
//   stdout.write('Masukkan suhu dalam Fahrenheit: ');
//   var fahrenheit = num.parse(stdin.readLineSync()!);
//
//   var celsius = (fahrenheit - 32) * 5 / 9;
//   print('$fahrenheit derajat Fahrenheit = $celsius derajat celsius');
//
// }


// 11. Functions

// Semua program Dart dimulai dari fungsi main()
// main() adalah contoh fungsi utama yang selalu kita gunakan.

// Fungsi print() akan mengambil nilai String atau objek lainnya dan menampilkannya ke konsol.

// void main() {
// print('Hello Dart!');
// }

// Untuk mendeklarasikan fungsi, caranya sama dengan penulisan fungsi main() yaitu dengan menentukan tipe nilai balik atau return value lalu nama fungsi dan parameter inputnya.

//   returnType functionName(type param1, type param2, ...){
//     return result;
//   }

// void main() {
//   greet();
// }
//
// void greet() {
//   print('Hello!');
// }

// contoh dua parameter

// void main() {
//   greet('Dicoding', 2015);
// }
//
// void greet(String name, int bornYear) {
//   var age = 2023 - bornYear;
//   print('Halo $name! Tahun ini Anda berusia $age tahun');
// }
//
// /// Output:
// /// Halo Dicoding! Tahun ini Anda berusia 8 tahun

// Fungsi yang mengembalikan nilai ditandai dengan definisi return type selain void dan memiliki keyword return

// void main() {
//   var firstNumber = 7;
//   var secondNumber = 10;
//   print(
//       'Rata-rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}');
// }
//
// double average(num num1, num num2) {
//   return (num1 + num2) / 2;
// }
//
// /// Output:
// /// Rata-rata dari 7 & 10 adalah 8.5

// Jika fungsi hanya memiliki satu baris kode atau instruksi di dalamnya, maka bisa disingkat dengan anotasi =>. Ini juga dikenal dengan nama arrow syntax.

// double average(num num1, num num2) => (num1 + num2) / 2;
// void greeting() => print('Hello');


// 11.1 Optional parameter

// Optional parameter adalah Fungsi di mana kita tidak wajib mengisi parameter yang diminta oleh fungsi. Untuk bisa membuat parameter menjadi opsional, kita perlu memasukkannya ke dalam kurung siku.

// contoh biasanya
// void greetNewUser(String name, int age, bool isVerified)
// greetNewUser('Widy', 20, true);

// contoh dengan Optional parameter
// void greetNewUser([String name, int age, bool isVerified])

// Cara ini disebut dengan positional optional parameters.
// Dengan optional parameter seperti di atas kita bisa memanggil fungsi seperti berikut:
// //
// // greetNewUser('Widy', 20, true);
// // greetNewUser('Widy', 20);
// // greetNewUser('Widy');
// // greetNewUser();

// Setiap parameter yang tidak dimasukkan akan memiliki nilai null. Namun sejak versi 2.12, Dart memiliki fitur null safety di mana suatu variabel secara default tidak bisa memiliki nilai null. Solusinya, kita bisa menambahkan tanda tanya (?) setelah tipe data supaya bisa menyimpan nilai null atau memberikan nilai parameter default. Nilai ini akan digunakan jika kita tidak memasukkan parameternya.

// Contoh
// void greetNewUser([String? name, int? age, bool isVerified = false]) {}
//
// greetNewUser(null, null, true);
//
// cara mengatasi dengan named optional parameters.
// void greetNewUser({String? name, int? age, bool? isVerified})

// greetNewUser(name: 'Widy', age: 20, isVerified: true);
// greetNewUser(name: 'Widy', age: 20);
// greetNewUser(age: 20);
// greetNewUser(isVerified: true);

// Perhatikan bahwa parameter ini bersifat opsional dan secara default akan bernilai null. Untuk memenuhi null safety, Anda bisa menggunakan cara seperti sebelumnya, atau menandai parameter wajib diisi dengan keyword required.
//
// void greetNewUser({required String name, required int age, bool isVerified = false}) {}


// 12. Variable Scope

// variable scope (lingkup variabel) adalah aturan yang menentukan di mana suatu variabel bisa diakses dalam kode. Lingkup variabel terbagi menjadi beberapa jenis berdasarkan lokasi deklarasi variabel tersebut.

// contoh

// void main() {
//   var isAvailableForDiscount = true;
//   var price = 300000;
//   num discount = 0;
//   if (isAvailableForDiscount) {
//     discount = 10 / 100 * price;
//   }
//   print('You need to pay: ${price - discount}');
// }

// Pada kode di atas variabel discount masih bisa diakses dari dalam kode if karena masih berada di dalam satu scope fungsi main().

// Contoh dipisah menjadi dua fungsi

// void main() {
//   var price = 300000;
//   var discount = checkDiscount(price);
//   print('You need to pay: ${price - discount}');
// }
//
// num checkDiscount(num price) {
//   num discount = 0;      // pembuatan variabel baru dengan scope lebih kecil
//   if (price >= 100000) {
//     discount = 10 / 100 * price;
//   }
//
//   return discount;
// }

// Variabel discount dideklarasikan pada fungsi checkDiscount() sehingga memiliki scope pada fungsi tersebut saja. Nilainya akan berbeda dengan variabel discount pada fungsi main(). Saat variabel dideklarasikan pada suatu fungsi tertentu, ia hanya menjangkau di dalamnya saja karena cakupannya tidak bisa menjangkau ke fungsi lain.

// beda dengan variabel yang dideklerasikan secara global.

// contoh :

// var price = 300000;
//
// void main() {
//   var discount = checkDiscount(price);  // variabel price dapat diakses di main()
//   print('You need to pay: ${price - discount}');
// }
//
// num checkDiscount(num price) {
//   num discount = 0;
//   if (price >= 100000) {                // selain itu, ia dapat diakses juga di checkDiscount(),
//     discount = 10 / 100 * price;        // bahkan, di level pengondisian if.
//   }
//
//   return discount;
// }


// Program di bawah ini adalah salah satu contoh kesalahan dalam memanggil variabel. Ia memanggil variabel discountApplied,

// var price = 300000;
//
// void main() {
//   var discount = checkDiscount(price);
//   print('You need to pay: ${price - discount}');
// }
//
// num checkDiscount(num price) {
//   num discount = 0;
//   if (!discountApplied) {            // pemanggilan variabel yang salah sehingga terjadi error
//     if (price >= 100000) {
//       discount = 10 / 100 * price;
//       var discountApplied = true;    // proses deklarasi seharusnya terjadi sebelum pemanggilan variabel
//     }
//   }
//
//   return discount;
// }


// 13. Constants & Final

// Constans berguna untuk menyimpan nilai yang tidak akan berubah selama program berjalan.

// contoh nilai pi
// const pi = 3.14;
//
// bisa juga
// const num pi = 3.14;
// untuk mendeteksi data lebih akurat

// Contoh Penggunaan

// const num pi = 3.14;
//
// void main() {
//   var radius = 7;
//   print(
//       'Luas lingkaran dengan radius $radius = ${calculateCircleArea(radius)}');
// }
//
// num calculateCircleArea(num radius) => pi * radius * radius;

// opsi lain dari const adalah final untuk menghindari perubahan nilai variabel

// const : Bersifat compile-time constants, artinya nilai tersebut harus sudah diketahui sebelum program dijalankan.

// final : Nilainya masih bisa diinisialisasi ketika runtime atau ketika aplikasi berjalan.

// contoh

// void main() {
//   final firstName = "Achmad";
//   final lastName = "Ilham";
//
//   //lastName = 'Angga';       // tidak bisa dilakukan pengubahan nilai
//
//   print('Hello $firstName $lastName');
// }

// Kita masih bisa menerima input dan menyimpannya pada variabel firstName dan lastName, namun nilai variabel tersebut tidak bisa diubah setelah diinisialisasi.

// Immutable Variable : Variabel yang nilainya tidak bisa berubah


// 14. Null Safety

// Null = tidak yang tidak ada

// contoh penggunaan
// String favoriteFood = null;

// Untuk menggunakan fitur null safety, kita perlu menggunakan versi Dart 2.12. Anda dapat menentukan versi Dart yang digunakan dengan mengubah berkas pubspec.yaml yang terdapat dalam project. Pastikan minimal versi sdk yang digunakan adalah versi 2.12.0.

// environment:
// sdk: '>=2.12.0 <3.0.0'

// Dengan null safety, secara default sebuah variabel tidak bisa meilai null, kecuali kita mendeklarasikannya secara eksplisit.

// int age = null;               // Compile error
// String? favoriteFoomiliki d = null;

// Tanda tanya (?) di atas menunjukkan bahwa variabel favoriteFood boleh memiliki nilai null (nullable). Sementara variabel age harus memiliki nilai angka dan tidak boleh null (non-nullable)

// void main() {
//   String? favoriteFood = null;
//
//   buyAMeal(favoriteFood); // Compile error
// }
//
// void buyAMeal(String favoriteFood) {
//   print('I bought a $favoriteFood');
// }

// Untuk mengakses atau menangani variabel null seperti di atas, ada beberapa cara yang bisa kita lakukan. Pertama, ubah parameter agar dapat menerima nilai null lalu lakukan pengecekan nilai null.

// cara 1
// void buyAMeal(String? favoriteFood) {
//   if (favoriteFood == null) {
//     print('Bought Nasi Goreng');
//   } else {
//     print('Bought $favoriteFood');
//   }
// }

// cara 2
// void main() {
//   String? favoriteFood = 'Mie Ayam';
//
//   buyAMeal(favoriteFood!);      // disematkan bang operator supaya mengembalikan nilai non-null
// }
//
// void buyAMeal(String favoriteFood) {
//   print('I bought a $favoriteFood');
// }


// CONTROL FLOW

// 1. If and Else

// void main() {
//   var isRaining = true;
//
//   print('Prepare before going to office.');
//   if (isRaining) {
//     print("Oh. It's raining, bring an umbrella.");
//   }
//   print('Going to the office.');
// }

// Jika Anda mengubah nilai isRaining menjadi false, maka kode di dalam blok if akan dilewatkan dan program Anda tidak akan mengingatkan untuk membawa payung.

// void main() {
//   var openHours = 8;
//   var closedHours = 21;
//   var now = 17;
//
//   if (now > openHours && now < closedHours) {
//     print("Hello, we're open");
//   } else {
//     print("Sorry, we've closed");
//   }
// }

// contoh bahwasanya output else if disesuakan dengan urutan code

// void main() {
//   var score = 85;
//
//   print('Nilai Anda: ${calculateScore(score)}');
// }
//
// String calculateScore(num score) {
//   if (score > 90) {
//     return 'A';
//   } else if (score > 80) {
//     return 'B';
//   } else if (score > 70) {
//     return 'C';
//   } else if (score > 60) {
//     return 'D';
//   } else {
//     return 'E';
//   }
// }

// Fitur menarik lain dari Dart adalah conditional expressions. Dengan ini kita bisa menuliskan if-else statement hanya dalam satu baris:

// condition ? true expression : false expression

// var shopStatus = now > openHours ? "Hello, we're open" : "Sorry, we've closed";

// // expression1 ?? expression2
// var buyer = name ?? 'user';


// 2. For Loops

// For cocok digunakan pada kondisi perulangan di mana kita membutuhkan variabel indeks dan tahu berapa kali perulangan yang kita butuhkan

// contoh

// void main() {
//   for (int i = 1; i <= 100; i++) {
//     print(i);
//   }
// }

// Terdapat tiga bagian utama dalam sintaks for di atas:

// Pertama, variabel index yang seringkali diberi nama i yang berarti index. Pada variabel ini kita menginisialisasi nilai awal dari perulangan yang kita lakukan.

// Kedua, operasi perbandingan. Pada bagian ini komputer akan melakukan pengecekan kondisi apakah perulangan masih perlu dilakukan. Jika bernilai true maka kode di dalam blok for akan dijalankan.

// Ketiga, increment/decrement. Di sini kita melakukan penambahan atau pengurangan variabel index. Jadi pada contoh di atas variabel indeks akan ditambah dengan 1 di setiap akhir perulangan.


//challange

// void main() {
//   for (int i = 1; i <= 10; i++) {
//     print('*' * i);
//   }
// }

// Dalam kode Dart tersebut, operator * digunakan untuk menggandakan string. Ketika kita menulis '*' * i, kita membuat sebuah string yang terdiri dari karakter * sebanyak nilai i. Jadi, misalnya:
//
// Ketika i = 1, '*' * i menghasilkan '*'.
// Ketika i = 2, '*' * i menghasilkan '**'.
// Ketika i = 3, '*' * i menghasilkan '***'.
// Operator * di sini bukan operator perkalian biasa seperti dalam matematika, tetapi operator pengulangan untuk string dalam Dart, yang memungkinkan kita mengulang karakter atau string tertentu sebanyak jumlah yang ditentukan.


// 3. While Do

// Metode lain untuk melakukan perulangan adalah dengan while. Sama seperti for, instruksi while mengevaluasi ekspresi boolean dan menjalankan kode di dalam blok while ketika bernilai true.

// contoh 1 - 100
// void main() {
//   var i = 1;
//
//   while (i <= 100) {
//     print(i);
//     i++;
//   }
// }

// while loop akan terus mengeksekusi blok kode selama kondisi yang ditentukan bernilai true. Jika kondisi menjadi false, loop akan berhenti.

// void main() {
//   int count = 0;
//
//   while (count < 5) {
//     print(count);
//     count++; // Increment count
//   }
// }

// do while loop mirip dengan while loop, tetapi dengan satu perbedaan penting: blok kode dalam do while akan dieksekusi setidaknya sekali, bahkan jika kondisi awalnya false. Setelah eksekusi pertama, kondisi akan diperiksa, dan jika true, loop akan dilanjutkan.

// do {
// // kode yang akan dieksekusi
// } while (kondisi);

// contoh do while loop

// void main(){
//   int count = 0;
//
//   do {
//     print(count);
//     count++; // Increment count
//   } while (count < 5);
// }

// Infinite loop (loop tak terhingga) adalah jenis loop dalam pemrograman yang terus berjalan tanpa henti. Ini terjadi ketika kondisi untuk menghentikan loop tidak pernah tercapai, sehingga kode di dalam loop dieksekusi terus-menerus.

// contoh infinite loop

// void main() {
//   var i = 1;
//
//   while (i < 5) {
//     print(i);
//   }
// }

// variabel i selalu bernilai 1. Alhasil kondisi i < 5 akan selalu bernilai true dan akibatnya aplikasi akan terus mencetak 1 ke konsol sehingga mengalami crash.

// import 'dart:io';
//
// void main() {
//   int i = 10; // Jumlah baris segitiga terbalik
//
//   do {
//     // Mencetak bintang sebanyak i
//     int count = i; // Simpan nilai i ke count
//     stdout.write("*" * count); // Cetak bintang sebanyak count
//     print(""); // Pindah ke baris berikutnya
//     i--; // Mengurangi nilai i untuk segitiga terbalik
//   } while (i > 0); // Kondisi untuk menghentikan loop
// }


// 4. Break and Continue

// break digunakan untuk menghentikan loop secara langsung dan keluar dari loop. Ketika break dijalankan, eksekusi program akan melanjutkan ke baris kode yang berada di luar loop tersebut.

// void main() {
//   for (int i = 0; i < 10; i++) {
//     if (i == 5) {
//       break; // Keluar dari loop ketika i sama dengan 5
//     }
//     print(i); // Mencetak nilai i
//   }
// }

// Pernyataan continue digunakan untuk melewatkan iterasi saat ini dan melanjutkan ke iterasi berikutnya dalam loop. Ketika continue dijalankan, kode di bawahnya dalam loop untuk iterasi saat ini tidak akan dieksekusi.

// Contoh Penggunaan continue:

// void main() {
//   for (int i = 0; i < 10; i++) {
//     if (i % 2 == 0) {
//       continue; // Lewati iterasi ini jika i adalah angka genap
//     }
//     print(i); // Mencetak nilai i hanya jika i adalah angka ganjil
//   }
// }


// Switch and Case

// switch digunakan untuk melakukan pengecekan banyak kondisi dengan lebih mudah dan ringkas.

// Pernyataan switch memungkinkan Anda untuk menguji nilai dari suatu ekspresi (biasanya sebuah variabel) dan mengarahkan eksekusi ke blok kode yang sesuai dengan nilai tersebut.

// switch (ekspresi) {
// case nilai1:
// // Kode yang dijalankan jika ekspresi == nilai1
// break;
// case nilai2:
// // Kode yang dijalankan jika ekspresi == nilai2
// break;
// default:
// // Kode yang dijalankan jika tidak ada case yang cocok
// }

// Setiap case dalam switch mencakup nilai yang ingin Anda uji. Ketika nilai dari ekspresi cocok dengan salah satu case, blok kode yang sesuai akan dieksekusi. Jika tidak ada case yang cocok, blok kode dalam default (jika ada) akan dijalankan.

// contoh penggunaan
// void main() {
//   String hari = "Sabtu";
//
//   switch (hari) {
//     case "Senin":
//       print("Hari pertama dalam seminggu.");
//       break;
//     case "Selasa":
//       print("Hari kedua dalam seminggu.");
//       break;
//     case "Rabu":
//       print("Hari ketiga dalam seminggu.");
//       break;
//     case "Kamis":
//       print("Hari keempat dalam seminggu.");
//       break;
//     case "Jumat":
//       print("Hari kelima dalam seminggu.");
//       break;
//     case "Sabtu":
//       print("Hari keenam dalam seminggu.");
//       break;
//     case "Minggu":
//       print("Hari ketujuh dalam seminggu.");
//       break;
//     default:
//       print("Hari tidak valid.");
//   }
// }

// contoh lain
// void main() {
//   final firstNumber = 13;
//   final secondNumber = 18;
//   final operator = "+";
//
//   switch (operator) {
//     case '+':
//       print(
//           '$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}');
//       break;
//     case '-':
//       print(
//           '$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}');
//       break;
//     case '*':
//       print(
//           '$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}');
//       break;
//     case '/':
//       print(
//           '$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}');
//       break;
//     default:
//       print('Operator tidak ditemukan');
//   }
// }

// void main() {
//   var x = 11;
//   if (x * 2 + 1 < 23 && x % 2 == 1) {
//     print('x');
//   } else if (x != 0) {
//     print('y');
//   } else {
//     print('z');
//   }
// }

// import 'dart:io';
// void main() {
//   for (int i = 1; i <= 3; i++) {
//     for (int j = 1; j <= i; j++) {
//       stdout.write(j);
//     }
//   }
// }


// COLLECTIONS

// 1. List

// List adalah struktur data yang digunakan untuk menyimpan koleksi elemen atau item dalam urutan tertentu. List dapat menyimpan berbagai jenis data, seperti angka, string, objek, dan bahkan list lain. Struktur data ini sangat berguna karena memungkinkan pengorganisasian dan pengelolaan data dengan cara yang fleksibel dan efisien.

// Contoh penulisan
// List<int> numberList = [1, 2, 3, 4, 5];

// Kode di atas adalah contoh dari satu objek List yang berisi kumpulan data dengan tipe integer. Karena kompiler bisa mengetahui tipe data yang ada dalam sebuah objek List, maka tak perlu kita menuliskannya secara eksplisit.
//
// var numberList = [1, 2, 3, 4, 5];
// var stringList = ['Hello', 'Dicoding', 'Dart'];'

// void main() {
//   List dynamicList = [1, 'Dicoding', true];
//   print(dynamicList.runtimeType);
// }

// contoh lainnya
// void main() {
//   // Mendeklarasikan list dengan tipe data String
//   List<String> buah = ["Apel", "Jeruk", "Pisang"];
//
//   // Menampilkan list
//   print(buah); // Output: [Apel, Jeruk, Pisang]
//
//   // Mengakses elemen berdasarkan indeks
//   print(buah[0]); // Output: Apel
//
//   // Menambahkan elemen baru ke list
//   buah.add("Mangga");
//   print(buah); // Output: [Apel, Jeruk, Pisang, Mangga]
//
//   // Menghapus elemen dari list
//   buah.remove("Jeruk");
//   print(buah); // Output: [Apel, Pisang, Mangga]
//
//   // Mengubah elemen berdasarkan indeks
//   buah[1] = "Kiwi";
//   print(buah); // Output: [Apel, Kiwi, Mangga]
//
//   // Menghitung jumlah elemen dalam list
//   print(buah.length); // Output: 3
// }

// Deklarasi List: List<String> buah = ["Apel", "Jeruk", "Pisang"]; mendeklarasikan sebuah list bernama buah yang berisi tiga elemen bertipe String.
// Mengakses Elemen: Anda dapat mengakses elemen dalam list menggunakan indeks. Misalnya, buah[0] akan mengembalikan "Apel".
// Menambahkan Elemen: Metode add() digunakan untuk menambahkan elemen baru ke akhir list.
// Menghapus Elemen: Metode remove() digunakan untuk menghapus elemen tertentu dari list.
// Mengubah Elemen: Anda dapat mengubah elemen di posisi tertentu dengan menetapkan nilai baru pada indeks tersebut.
// Menghitung Jumlah Elemen: buah.length memberikan jumlah elemen yang ada dalam list.

// pemanfaatan di perulangan, contoh

// void main() {
//   List<String> stringList = ["Hello", "Dicoding", "Dart"];
//   for (int i = 0; i < stringList.length; i++) {
//     print(stringList[i]);
//   }
// }

// Untuk menambahkan data ke dalam list, kita bisa menggunakan fungsi add().

// contoh add:

// void main() {
//   List<String> stringList = ["Hello", "Dicoding", "Dart"];
//
//   // Menambahkan data di akhir list.
//   stringList.add('Flutter');
//
//   print(stringList);
// }

// Fungsi add ini akan menambahkan data di akhir list.

// Lalu bagaimana jika kita ingin menambahkan data namun tidak di akhir List? Jawabannya adalah dengan fungsi insert. Di dalam fungsi insert kita perlu memasukkan 2 parameter, yaitu indeks list dan data yang akan dimasukkan.

// contoh insert

// void main() {
//   List<String> stringList = ["Hello", "Dicoding", "Dart", "Flutter"];
//   // Menambahkan data di indeks ke-0.
//   stringList.insert(0, 'Programming');
//   print(stringList);
// }

// remove jika kita ingin menghapus data
// contoh remove

// void main() {
//   List<String> stringList = [
//     "Programming",
//     "Hello",
//     "Dicoding",
//     "Dart",
//     "Flutter"
//   ];
//
//   // Menghapus list dengan nilai Programming
//   stringList.remove('Programming');
//
//   // Menghapus list pada index ke-1
//   // stringList.removeAt(1);
//
//   // Menghapus data list terakhir
//   // stringList.removeLast();
//
//   // Menghapus list mulai index ke-0 sampai ke-1 (indeks 2 masih dipertahankan)
//   // stringList.removeRange(0,2);
//
//   print(stringList);
// }

// 1.1 Spread Operator

// Spread operator adalah fitur dalam beberapa bahasa pemrograman, termasuk Dart, yang digunakan untuk mengekspansi elemen dari koleksi seperti list atau map.ni memungkinkan Anda untuk menyalin elemen dari satu koleksi ke koleksi lain atau untuk menggabungkan beberapa koleksi menjadi satu koleksi dengan cara yang lebih ringkas dan mudah dibaca.
//
// Penggunaan Spread Operator di Dart
// Dalam Dart, spread operator ditandai dengan tanda .... Ini memungkinkan Anda untuk menyebarkan elemen dari list atau map ke dalam list atau map lain.

// contoh menyebarkan elemen list

// void main() {
//   List<int> angka1 = [1, 2, 3];
//   List<int> angka2 = [4, 5, 6];
//
//   // Menggunakan spread operator untuk menggabungkan dua list
//   List<int> gabungan = [...angka1, ...angka2];
//
//   print(gabungan); // Output: [1, 2, 3, 4, 5, 6]
// }

// Contoh Menyalin List

// void main() {
//   List<String> buah = ["Apel", "Jeruk", "Pisang"];
//
//   // Menggunakan spread operator untuk menyalin list
//   List<String> salinanBuah = [...buah];
//
//   print(salinanBuah); // Output: [Apel, Jeruk, Pisang]
// }

// Contoh Menyebarkan Elemen ke Dalam List

// void main() {
//   List<String> buah = ["Apel", "Jeruk"];
//
//   // Menambahkan lebih banyak elemen menggunakan spread operator
//   buah = [...buah, "Pisang", "Mangga"];
//
//   print(buah); // Output: [Apel, Jeruk, Pisang, Mangga]
// }

// lainnya

// void main() {
//   var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
//   var others = ['Cake', 'Pie', 'Donut'];
//   var allFavorites = [...favorites, ...others];
//   print(allFavorites);
// }


// 2. Set

// Set adalah struktur data yang digunakan untuk menyimpan koleksi elemen yang unik dan tidak terurut. Elemen dalam set tidak dapat memiliki duplikasi, dan set biasanya tidak mempertahankan urutan elemen seperti list. Set digunakan ketika Anda perlu menyimpan data yang tidak boleh berulang dan ketika pencarian atau pengecekan keberadaan elemen lebih penting dibandingkan urutan.

// contoh
// void main() {
//   Set<int> anotherSet = new Set.from([1, 4, 6, 4, 1]);
//
//   print(anotherSet);
// }
//
// Set akan membuang angka yang sama.

// contoh lengkap

// void main() {
//   // Mendeklarasikan set dengan tipe data String
//   Set<String> buah = {"Apel", "Jeruk", "Pisang"};
//
//   // Menampilkan set
//   print(buah); // Output: {Apel, Jeruk, Pisang}
//
//   // Menambahkan elemen baru ke set
//   buah.add("Mangga");
//   print(buah); // Output: {Apel, Jeruk, Pisang, Mangga}
//
//   // Mencoba menambahkan elemen duplikat
//   buah.add("Apel"); // Tidak ada efek karena "Apel" sudah ada
//   print(buah); // Output: {Apel, Jeruk, Pisang, Mangga}
//
//   // Menghapus elemen dari set
//   buah.remove("Jeruk");
//   print(buah); // Output: {Apel, Pisang, Mangga}
//
//   // Mengecek keberadaan elemen dalam set
//   print(buah.contains("Pisang")); // Output: true
//   print(buah.contains("Jeruk")); // Output: false
//
//   // Menghitung jumlah elemen dalam set
//   print(buah.length); // Output: 3
//
//   // Mengonversi set menjadi list
//   List<String> listBuah = buah.toList();
//   print(listBuah); // Output: [Apel, Pisang, Mangga]
// }


// Deklarasi Set: Set<String> buah = {"Apel", "Jeruk", "Pisang"}; mendeklarasikan sebuah set bernama buah yang berisi tiga elemen bertipe String.
// Menampilkan Set: Anda dapat mencetak set langsung untuk melihat isinya.
// Menambahkan Elemen: Metode add() digunakan untuk menambahkan elemen baru. Jika elemen sudah ada, tidak ada perubahan yang terjadi.
// Menghapus Elemen: Metode remove() digunakan untuk menghapus elemen tertentu dari set.
// Mengecek Keberadaan Elemen: Metode contains() memeriksa apakah suatu elemen ada dalam set.
// Menghitung Jumlah Elemen: buah.length memberikan jumlah elemen yang ada dalam set.
// Mengonversi Set menjadi List: Anda dapat mengonversi set ke dalam list menggunakan metode toList().

// Dart juga memiliki fungsi union dan intersection untuk mengetahui gabungan dan irisan dari 2 (dua) buah Set. Sebagai contoh:

void main() {
  var setA = {1, 2, 4, 5};
  var setB = {1, 5, 7};

  var union = setA.union(setB);
  var intersection = setA.intersection(setB);

  print("union: $union");
  print("intersection: $intersection");
}

