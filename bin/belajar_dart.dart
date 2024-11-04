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

// void main() {
//   var setA = {1, 2, 4, 5};
//   var setB = {1, 5, 7};
//
//   var union = setA.union(setB);
//   var intersection = setA.intersection(setB);
//
//   print("union: $union");
//   print("intersection: $intersection");
// }


// 3. Map

// Map adalah struktur data yang menyimpan pasangan kunci-nilai (key-value pairs). Dalam Map, setiap kunci harus unik, tetapi nilai yang terkait dengan kunci tersebut dapat duplikat. Map sering digunakan ketika Anda ingin mengasosiasikan data yang berbeda atau mengakses data dengan cara yang efisien berdasarkan kunci.

// void main() {
//   // Mendeklarasikan map dengan tipe data String sebagai kunci dan int sebagai nilai
//   Map<String, int> umur = {
//     "Asrul": 21,
//     "Dika": 22,
//     "Budi": 23
//   };
//
//   // Menampilkan map
//   print(umur); // Output: {Asrul: 21, Dika: 22, Budi: 23}
//
//   // Mengakses nilai menggunakan kunci
//   print(umur["Asrul"]); // Output: 21
//
//   // Menambahkan pasangan kunci-nilai baru ke map
//   umur["Rina"] = 20;
//   print(umur); // Output: {Asrul: 21, Dika: 22, Budi: 23, Rina: 20}
//
//   // Mengubah nilai untuk kunci yang sudah ada
//   umur["Dika"] = 25;
//   print(umur); // Output: {Asrul: 21, Dika: 25, Budi: 23, Rina: 20}
//
//   // Menghapus pasangan kunci-nilai dari map
//   umur.remove("Budi");
//   print(umur); // Output: {Asrul: 21, Dika: 25, Rina: 20}
//
//   // Mengecek keberadaan kunci dalam map
//   print(umur.containsKey("Rina")); // Output: true
//   print(umur.containsKey("Budi")); // Output: false
//
//   // Menghitung jumlah pasangan kunci-nilai dalam map
//   print(umur.length); // Output: 3
//
//   // Mendapatkan semua kunci dari map
//   print(umur.keys); // Output: (Asrul, Dika, Rina)
//
//   // Mendapatkan semua nilai dari map
//   print(umur.values); // Output: (21, 25, 20)
// }

// Deklarasi Map: Map<String, int> umur = {...}; mendeklarasikan sebuah map bernama umur yang memiliki kunci bertipe String dan nilai bertipe int.
// Menampilkan Map: Anda dapat mencetak map langsung untuk melihat isinya.
// Mengakses Nilai: Anda dapat mengakses nilai menggunakan kunci dengan sintaks umur["Asrul"].
// Menambahkan Pasangan Kunci-Nilai: Anda dapat menambahkan entri baru dengan menetapkan nilai untuk kunci baru.
// Mengubah Nilai: Anda dapat mengubah nilai yang terkait dengan kunci yang sudah ada.
// Menghapus Pasangan Kunci-Nilai: Metode remove() digunakan untuk menghapus entri berdasarkan kunci.
// Mengecek Keberadaan Kunci: Metode containsKey() memeriksa apakah suatu kunci ada dalam map.
// Menghitung Jumlah Enti: umur.length memberikan jumlah pasangan kunci-nilai yang ada dalam map.
// Mendapatkan Kunci dan Nilai: Anda dapat menggunakan keys untuk mendapatkan semua kunci dan values untuk mendapatkan semua nilai dari map.
//
// Kapan Menggunakan Map?
// Gunakan map ketika Anda perlu menyimpan data dalam bentuk pasangan kunci-nilai.
// Map sangat berguna ketika Anda ingin melakukan pencarian berdasarkan kunci dengan cepat, seperti mengasosiasikan nama dengan umur, ID dengan informasi pengguna, dan lain-lain.

// Kita dapat menampilkan key apa saja yang ada di dalam Map dengan menggunakan property keys. Sedangkan untuk mengetahui nilai apa saja yang ada di dalam Map kita bisa menggunakan property values.

// var mapKeys = capital.keys;
// print("mapKeys: $mapKeys");
//
// var mapValues = capital.values;
// print("mapValues: $mapValues");
// }

// Untuk menambahkan key-

// void main() {
//   var capital = {
//     'Jakarta': 'Indonesia',
//     'London': 'England',
//     'Tokyo': 'Japan',
//   };
//
//   capital['New Delhi'] = 'India';
//
//   print(capital);
// }
//
// /// Output:
// /// {Jakarta: Indonesia, London: England, Tokyo: Japan, New Delhi: India}

// Terdapat beberapa properti yang tersedia pada Map, antara lain:
// keys, untuk menampilkan seluruh key yang ada di dalam Map.
// values, untuk mengetahui seluruh nilai yang ada di dalam Map.
// clear(), untuk menghapus seluruh key-value yang ada di dalam Map.
// Saat mengakses key yang tidak ada pada map, nilai variabel akan bernilai null.


// PARADIGMA OBJECT ORIENTED PROGRAMMING (OOP)

// Prinsip Utama OOP

// a. Enkapsulasi - Encapsulation
// Enkapsulasi adalah proses menyembunyikan detail internal dari objek dan hanya memberikan antarmuka yang diperlukan untuk berinteraksi dengan objek tersebut. Ini membantu menjaga integritas data dan mencegah modifikasi yang tidak diinginkan dari luar objek.

// contoh

// class Mobil {
//   // Atribut privat
//   String _merk;
//   int _tahun;
//
//   // Konstruktor
//   Mobil(this._merk, this._tahun);
//
//   // Metode publik untuk mendapatkan informasi
//   String informasi() {
//     return 'Merk: $_merk, Tahun: $_tahun';
//   }
// }

// void main() {
//   Mobil mobil = Mobil('Toyota', 2020);
//   print(mobil.informasi()); // Output: Merk: Toyota, Tahun: 2020
// }


// b. pewarisan - inheritance

// Enkapsulasi adalah proses menyembunyikan detail internal dari objek dan hanya memberikan antarmuka yang diperlukan untuk berinteraksi dengan objek tersebut. Ini membantu menjaga integritas data dan mencegah modifikasi yang tidak diinginkan dari luar objek.

// class Mobil {
//   // Atribut privat
//   String _merk;
//   int _tahun;
//
//   // Konstruktor
//   Mobil(this._merk, this._tahun);
//
//   // Metode publik untuk mendapatkan informasi
//   String informasi() {
//     return 'Merk: $_merk, Tahun: $_tahun';
//   }
// }
//
// void main() {
//   Mobil mobil = Mobil('Toyota', 2020);
//   print(mobil.informasi()); // Output: Merk: Toyota, Tahun: 2020
// }

// c. Polimorfisme - Polymorphism

// Polimorfisme adalah kemampuan untuk menggunakan satu antarmuka atau metode untuk berbagai jenis objek. Ini memungkinkan metode yang sama untuk berfungsi dengan cara yang berbeda berdasarkan objek yang memanggilnya.

// Polymorphism dalam bahasa Yunani berarti “banyak bentuk.” Sederhananya objek dapat memiliki bentuk atau implementasi yang berbeda-beda pada satu metode yang sama. Semua hewan bernafas, namun tentu kucing dan ikan memiliki cara bernafas yang berbeda. Perbedaan bentuk atau cara pernafasan tersebut merupakan contoh dari polymorphism.

// class Hewan {
//   void suara() {
//     print('Suara hewan');
//   }
// }
//
// class Kucing extends Hewan {
//   void suara() {
//     print('Meow');
//   }
// }
//
// class Anjing extends Hewan {
//   void suara() {
//     print('Bark');
//   }
// }
//
// void main() {
//   Hewan hewan1 = Kucing();
//   Hewan hewan2 = Anjing();
//
//   hewan1.suara(); // Output: Meow
//   hewan2.suara(); // Output: Bark
// }


//  Abstraksi - Abstraction

// Abstraksi adalah proses menyederhanakan kompleksitas dengan hanya menunjukkan fitur penting kepada pengguna. Ini bisa dicapai dengan menggunakan kelas abstrak atau antarmuka.

// contoh

// abstract class Bentuk {
//   void gambar(); // Metode abstrak
// }
//
// class Lingkaran extends Bentuk {
//   void gambar() {
//     print('Menggambar Lingkaran');
//   }
// }
//
// void main() {
//   Lingkaran lingkaran = Lingkaran();
//   lingkaran.gambar(); // Output: Menggambar Lingkaran
// }


// 1. Class

// Dalam pemrograman berorientasi objek (OOP), kelas (class) adalah blueprint atau cetak biru yang digunakan untuk membuat objek. Kelas mendefinisikan atribut (data) dan metode (fungsi) yang dimiliki oleh objek yang dibuat dari kelas tersebut. Dengan kata lain, kelas adalah struktur yang mendefinisikan sifat dan perilaku dari objek.

// Contoh Kelas dalam Dart

// class Mobil {
//   // Atribut
//   String merk;
//   int tahun;
//
//   // Konstruktor
//   Mobil(this.merk, this.tahun);
//
//   // Metode untuk menampilkan informasi mobil
//   void informasi() {
//     print('Merk: $merk, Tahun: $tahun');
//   }
// }
//
// void main() {
//   // Membuat objek dari kelas Mobil
//   Mobil mobil1 = Mobil('Toyota', 2020);
//   Mobil mobil2 = Mobil('Honda', 2021);
//
//   // Mengakses metode dari objek
//   mobil1.informasi(); // Output: Merk: Toyota, Tahun: 2020
//   mobil2.informasi(); // Output: Merk: Honda, Tahun: 2021
// }

// Penjelasan Kode:
// Deklarasi Kelas: class Mobil mendeklarasikan sebuah kelas bernama Mobil.
// Atribut: Kelas Mobil memiliki dua atribut: merk dan tahun, yang menyimpan informasi tentang mobil.
// Konstruktor: Mobil(this.merk, this.tahun) adalah konstruktor yang digunakan untuk menginisialisasi atribut ketika objek dibuat.
// Metode: void informasi() adalah metode yang menampilkan informasi tentang mobil.
// Membuat Objek: Dalam fungsi main(), kita membuat dua objek dari kelas Mobil, yaitu mobil1 dan mobil2.
// Mengakses Metode: Kita memanggil metode informasi() untuk menampilkan informasi dari kedua objek.

// Kapan Menggunakan Kelas?
// Gunakan kelas ketika Anda ingin mendefinisikan jenis objek dengan atribut dan perilaku tertentu.
// Kelas sangat berguna dalam pengembangan aplikasi besar yang memerlukan struktur dan organisasi yang baik.

// void main() {
//   var dicodingCat = Animal('Gray', 2, 4.2);
//
//   dicodingCat.eat();
//   dicodingCat.poop();
//
//   print(dicodingCat.weight);
// }
//
// class Animal {
//   String name;
//   int age;
//   double weight;
//
//   Animal(this.name, this.age, this.weight);
//
//   void eat() {
//     print('$name is eating.');
//     weight = weight + 0.2;
//   }
//
//   void sleep() {
//     print('$name is sleeping.');
//   }
//
//   void poop() {
//     print('$name is pooping.');
//     weight = weight - 0.1;
//   }
// }


// 3. Properties & Methods

// Properties adalah variabel yang menyimpan data atau status dari objek. Setiap objek dapat memiliki nilai yang berbeda untuk property yang sama. Properties dapat memiliki berbagai tingkat akses (misalnya, publik, privat, atau dilindungi) yang menentukan seberapa mudah mereka dapat diakses dari luar kelas.

// contoh

// class Mobil {
//   // Properties
//   String merk;   // Merk mobil
//   int tahun;     // Tahun pembuatan
//
//   // Konstruktor
//   Mobil(this.merk, this.tahun);
// }

// Merk dan tahun adalah properties dari kelas Mobil. Setiap objek Mobil akan memiliki nilai unik untuk merk dan tahun.

// Methods adalah fungsi yang mendefinisikan perilaku atau tindakan yang dapat dilakukan oleh objek. Metode dapat mengakses dan memodifikasi properties objek. Mereka juga dapat menerima parameter dan mengembalikan nilai.

// Contoh Methods

// class Mobil {
//   // Properties
//   String merk;
//   int tahun;
//
//   // Konstruktor
//   Mobil(this.merk, this.tahun);
//
//   // Method untuk menampilkan informasi mobil
//   void informasi() {
//     print('Merk: $merk, Tahun: $tahun');
//   }
//
//   // Method untuk memperbarui tahun mobil
//   void perbaruiTahun(int tahunBaru) {
//     tahun = tahunBaru;
//   }
// }
//
// void main() {
//   // Membuat objek dari kelas Mobil
//   Mobil mobil1 = Mobil('Toyota', 2020);
//
//   // Mengakses method untuk menampilkan informasi
//   mobil1.informasi(); // Output: Merk: Toyota, Tahun: 2020
//
//   // Memperbarui tahun mobil
//   mobil1.perbaruiTahun(2022);
//   mobil1.informasi(); // Output: Merk: Toyota, Tahun: 2022
// }

// Penjelasan Kode:
// Properties:
// String merk; dan int tahun; adalah properties yang menyimpan informasi tentang objek mobil.
// Method:
// void informasi() adalah method yang menampilkan merk dan tahun mobil.
// void perbaruiTahun(int tahunBaru) adalah method yang mengubah tahun mobil ke nilai baru yang diberikan.
// Mengakses Properties dan Methods: Dalam fungsi main(), kita membuat objek mobil1 dan mengakses metode informasi() dan perbaruiTahun() untuk berinteraksi dengan properties objek tersebut.


// 4. Constructor

// Constructor adalah fungsi spesial dari sebuah kelas yang digunakan untuk membuat objek.

// Beberapa perbedaan antara constructor dan fungsi biasa adalah:
//
// Constructor memiliki nama yang sama dengan nama kelas.
// Constructor tidak memiliki nilai kembalian (return type).
// Constructor akan secara otomatis dipanggil ketika sebuah objek dibuat.
// Jika kita tidak mendefinisikan constructor, default constructor tanpa argumen akan dibuat.

// import 'animal.dart';
//
// void main() {
//   var dicodingCat = Animal();
//
//   dicodingCat.name = 'Gray';
//   dicodingCat.age = 2;
//   dicodingCat.weight = 4.2;
// }

// jenis konstruktor di dart

// a. Default Constructor (Konstruktor Default)
// Konstruktor tanpa parameter, yang digunakan untuk menginisialisasi objek dengan nilai default atau tidak melakukan apa-apa.

// class Mobil {
//   String merk = 'Tidak diketahui';
//   int tahun = 2000;
//
//   // Konstruktor default
//   Mobil() {
//     print('Objek Mobil dibuat');
//   }
// }
//
// void main() {
//   Mobil mobil1 = Mobil();
//   print(mobil1.merk); // Output: Tidak diketahui
// }

// b. Parameterized Constructor (Konstruktor dengan Parameter)

// Konstruktor ini menerima parameter sehingga nilai properties dapat ditentukan saat objek dibuat.

// class Mobil {
//   String merk;
//   int tahun;
//
//   // Konstruktor dengan parameter
//   Mobil(this.merk, this.tahun);
// }
//
// void main() {
//   Mobil mobil1 = Mobil('Toyota', 2020);
//   print('Merk: ${mobil1.merk}, Tahun: ${mobil1.tahun}'); // Output: Merk: Toyota, Tahun: 2020
// }

// c. Named Constructor (Konstruktor Bernama)

// Dart memungkinkan penggunaan beberapa konstruktor dalam satu kelas menggunakan named constructor. Named constructor membantu kita membuat beberapa konstruktor dengan nama yang berbeda untuk berbagai jenis inisialisasi.

// class Mobil {
//   String merk;
//   int tahun;
//
//   // Konstruktor utama
//   Mobil(this.merk, this.tahun);
//
//   // Named constructor
//   Mobil.denganTahun(this.merk) : tahun = 2022;
// }
//
// void main() {
//   Mobil mobil1 = Mobil('Toyota', 2020);
//   Mobil mobil2 = Mobil.denganTahun('Honda');
//   print('Merk: ${mobil1.merk}, Tahun: ${mobil1.tahun}'); // Output: Merk: Toyota, Tahun: 2020
//   print('Merk: ${mobil2.merk}, Tahun: ${mobil2.tahun}'); // Output: Merk: Honda, Tahun: 2022
// }

// d. Const Constructor

// Jika objek dibuat dengan nilai yang tidak akan berubah (immutable), kita dapat menggunakan const constructor. Konstruktor ini menjadikan objek immutable dan tidak memungkinkan perubahan properties.

// class Titik {
//   final int x;
//   final int y;
//
//   // Const constructor
//   const Titik(this.x, this.y);
// }
//
// void main() {
//   const Titik titik1 = Titik(3, 4);
//   print('Titik (${titik1.x}, ${titik1.y})'); // Output: Titik (3, 4)
// }


// 5. Cascade Notation

// Cascade Notation adalah fitur dalam Dart yang memungkinkan pemanggilan beberapa metode atau pengaturan beberapa properti pada objek yang sama secara berurutan tanpa harus mengulang variabel objeknya. Dengan cascade notation, kode menjadi lebih ringkas dan mudah dibaca. Cascade notation ditandai dengan dua titik (..) yang memungkinkan kita memanggil beberapa metode atau mengatur beberapa properti dalam satu ekspresi.

// contoh tanpa casacade
// class Mobil {
//   String merk;
//   int tahun;
//
//   void setMerk(String merk) {
//     this.merk = merk;
//   }
//
//   void setTahun(int tahun) {
//     this.tahun = tahun;
//   }
//
//   void informasi() {
//     print('Merk: $merk, Tahun: $tahun');
//   }
// }
//
// void main() {
//   Mobil mobil1 = Mobil();
//   mobil1.setMerk('Toyota');
//   mobil1.setTahun(2021);
//   mobil1.informasi();
// }

// dengan cascade


// void main() {
//   Mobil mobil1 = Mobil()
//     ..setMerk('Toyota')
//     ..setTahun(2021)
//     ..informasi(); // Output: Merk: Toyota, Tahun: 2021
// }

// Mengatur Properti dengan Cascade Notation

// class Mobil {
//   String merk;
//   int tahun;
//
//   void informasi() {
//     print('Merk: $merk, Tahun: $tahun');
//   }
// }
//
// void main() {
//   Mobil mobil1 = Mobil()
//     ..merk = 'Honda'
//     ..tahun = 2022
//     ..informasi(); // Output: Merk: Honda, Tahun: 2022
// }

// contoh lain

// import 'animal.dart';
//
// void main() {
//   var dicodingCat = Animal('', 2, 4.2)
//     ..name = 'Gray'
//     ..eat();
// }
//
// class Animal {
//   String name = '';
//   int age = 0;
//   double weight = 0;
//
//   Animal(this.name, this.age, this.weight);
//
//   void eat() {
//     print('$name is eating.');
//     weight = weight + 0.2;
//   }
//
//   void sleep() {
//     print('$name is sleeping.');
//   }
//
//   void poop() {
//     print('$name is pooping.');
//     weight = weight - 0.1;
//   }
// }


// 6. Inheritance

// Inheritance adalah kemampuan suatu program untuk membuat kelas baru dari kelas yang ada. Konsep inheritance ini bisa dibayangkan layaknya seorang anak mewarisi sifat dari orang tuanya. Di dalam OOP kelas yang menurunkan sifat disebut sebagai kelas induk (parent class/superclass) sementara kelas yang mewarisi kelas induknya disebut sebagai kelas anak (child class/subclass).

// import 'cat.dart';
//
// void main() {
//   var dicodingCat = Cat('Grayson', 2, 2.2, 'Gray');
//
//   dicodingCat.walk();
//   dicodingCat.eat();
//
//   print(dicodingCat.weight);
// }
//
// /// Output:
// /// Grayson is walking
// /// Grayson is eating.
// /// 2.4000000000000004

// Jika ingin menginisialisasikan nilai furColor melalui constructor, maka kita bisa menambahkan parameter di dalam constructor.

// Cat(String name, int age, double weight, String furColor) : this.furColor = furColor

// Atau, kita bisa meringkasnya seperti yang telah kita pelajari pada materi constructor.
//
// Cat(String name, int age, double weight, this.furColor) : super(name, age, weight);
//
// Apabila ingin melihat sumber dari interactive code di atas, silakan kunjungi tautan berikut.


// 7. Abstract

// abstract adalah konsep yang digunakan untuk mendefinisikan kelas atau metode yang bersifat umum dan tidak dapat langsung diinstansiasi (dibuat objeknya). Kelas dan metode abstrak bertujuan untuk menyediakan kerangka bagi kelas-kelas lain yang lebih spesifik dan akan mengimplementasikan fungsionalitas tertentu.

// Kelas abstrak adalah kelas yang tidak dapat dibuat objeknya secara langsung dan hanya dapat digunakan sebagai kelas dasar (parent class) untuk kelas-kelas lain. Di Dart, kelas abstrak dideklarasikan dengan kata kunci abstract.

// Contoh
// import 'animal.dart';
//
// void main() {
//   var dicodingCat = Animal('', 2, 4.2)
//     ..name = 'Gray'
//     ..eat();
// }
//
// abstract class Animal {
//   String name = '';
//   int age = 0;
//   double weight = 0;
//
//   Animal(this.name, this.age, this.weight);
//
//   void eat() {
//     print('$name is eating.');
//     weight = weight + 0.2;
//   }
//
//   void sleep() {
//     print('$name is sleeping.');
//   }
//
//   void poop() {
//     print('$name is pooping.');
//     weight = weight - 0.1;
//   }
// }

// Contoh Lainnya
//
// abstract class Hewan {
//   // Properti umum yang dimiliki setiap hewan
//   String nama;
//   int umur;
//
//   Hewan(this.nama, this.umur);
//
//   // Metode abstrak (tidak memiliki implementasi)
//   void suara();
//
//   // Metode yang memiliki implementasi
//   void info() {
//     print("Nama: $nama, Umur: $umur tahun");
//   }
// }

// Pada contoh di atas:
//
// Kelas Hewan adalah kelas abstrak karena mengandung metode suara() yang tidak memiliki implementasi.
// Metode info() memiliki implementasi dan dapat dipanggil dari kelas turunan.

// Kelas Turunan yang Mengimplementasikan Abstract Class
// Kelas turunan (subclass) harus mengimplementasikan metode abstrak dari kelas induk abstrak. Jika tidak, subclass juga harus dideklarasikan sebagai abstrak.

// class Kucing extends Hewan {
//   Kucing(String nama, int umur) : super(nama, umur);
//
//   // Mengimplementasikan metode abstrak `suara`
//   @override
//   void suara() {
//     print("Meong!");
//   }
// }
//
// void main() {
//   Kucing kucing1 = Kucing("Tom", 3);
//   kucing1.info(); // Output: Nama: Tom, Umur: 3 tahun
//   kucing1.suara(); // Output: Meong!
// }

// Pada contoh ini:
//
// Kelas Kucing menginherit kelas abstrak Hewan dan mengimplementasikan metode suara().
// Objek Kucing kemudian dapat dibuat, dan metode suara() menghasilkan output yang diharapkan.

// Fungsi dari Abstract Class
// 1. Sebagai Template: Kelas abstrak memungkinkan Anda membuat template atau kerangka bagi kelas yang lebih spesifik. Semua kelas yang menginherit kelas abstrak harus memenuhi persyaratan metode dan properti yang didefinisikan di kelas abstrak.
//
// 2. Penggunaan Polimorfisme: Abstract class membantu dalam menerapkan konsep polimorfisme. Misalnya, kita dapat menggunakan kelas Hewan sebagai tipe objek untuk banyak subclass yang berbeda seperti Kucing, Anjing, dll., dan memanggil metode suara() yang sudah diimplementasikan oleh masing-masing subclass.
//
// 3. Memisahkan Definisi dan Implementasi: Dengan abstract class, Anda dapat memisahkan definisi metode (di kelas abstrak) dari implementasinya (di kelas turunan). Hal ini membuat kode lebih modular dan mudah di-maintain.

// Kapan Menggunakan Abstract Class?
// Gunakan abstract class ketika:
//
// Anda ingin menyediakan kerangka umum atau template untuk kelas-kelas lain.
// Anda memiliki beberapa metode yang perlu diimplementasikan berbeda di setiap kelas turunan.
// Anda tidak ingin kelas tersebut diinstansiasi langsung.
// Abstract class adalah alat yang sangat berguna dalam desain perangkat lunak berbasis OOP, terutama dalam membuat kode yang mudah dipelihara dan scalable.


// 8. Implicit Interface

// Interface atau antarmuka merupakan set instruksi yang bisa diimplementasi oleh objek. Secara umum, interface berfungsi sebagai penghubung antara sesuatu yang abstrak dengan sesuatu yang nyata.

// class ClassName implements InterfaceName
//
// class Flyable {
//   void fly() { }
// }
//
// class Bird extends Animal implements Flyable {
//   String featherColor;
//
//   Bird(String name, int age, double weight, this.featherColor) : super(name, age, weight);
//
// }

// void main() {
//   var dicodingBird = Bird('Birdy', 2, 0.8, 'Gray');
//
//   dicodingBird.fly();
//   dicodingBird.eat();
// }

// Dalam bahasa Dart, Implicit Interface adalah konsep di mana setiap kelas secara otomatis memberikan interface (antarmuka) yang dapat digunakan oleh kelas lain tanpa harus secara eksplisit mendeklarasikan interface. Ini berbeda dari bahasa lain di mana interface harus dideklarasikan dengan kata kunci khusus.

// Contoh Penggunaan Implicit Interface

//Misalkan kita memiliki kelas Hewan:

// class Hewan {
//   void makan() {
//     print("Hewan sedang makan");
//   }
//
//   void tidur() {
//     print("Hewan sedang tidur");
//   }
// }

// Kelas Hewan secara otomatis menciptakan interface yang berisi metode makan dan tidur. Kelas lain bisa mengimplementasikan interface Hewan dengan menggunakan kata kunci implements, meskipun Hewan bukanlah interface secara eksplisit.

// void cetakMakanan(Hewan hewan) {
//   hewan.makan();
// }
//
// void main() {
//   Kucing kucing1 = Kucing();
//   cetakMakanan(kucing1); // Output: Kucing makan ikan
// }
//
//   @override
//   void tidur() {
//     print("Kucing sedang tidur");
//   }


// Dalam contoh ini:
//
// Kelas Kucing mengimplementasikan semua metode dari Hewan.
// Karena menggunakan implements, kelas Kucing harus menyediakan implementasi untuk semua metode dari interface Hewan.


// 9. Enumerated Types

// Dart menyediakan Enumerated Type, sering disebut Enumerations atau Enums. Enums mewakili kumpulan konstan yang membuat kode kita lebih jelas dan mudah dibaca.

// enum Rainbow {
//   red, orange, yellow, green, blue, indigo, violet
// }
//
// enum Weather {
//   sunny, cloudy, rain, storm;
// }

// contoh
// void main() {
//   print(Rainbow.values);
//   print(Rainbow.blue);
//   print(Rainbow.orange.index);
// }
//
// enum Rainbow { red, orange, yellow, green, blue, indigo, violet }

// untuk menampilkan nilai string setiap item kita dapat menggunakan properti .name

// print(Rainbow.blue.name);   // blue

// Kita juga bisa menggunakan enums ke dalam switch statements. Namun kita perlu menangani semua kemungkinan nilai enums yang Ada.

// void main() {
//   var weatherForecast = Weather.cloudy;
//
//   switch (weatherForecast) {
//     case Weather.sunny:
//       print("Today's weather forecast is sunny");
//       break;
//     case Weather.cloudy:
//       print("Today's weather forecast is cloudy");
//       break;
//     case Weather.rain:
//       print("Today's weather forecast is rain");
//       break;
//     case Weather.storm:
//       print("Today's weather forecast is storm");
//       break;
//   }
// }

// enum Weather { sunny, cloudy, rain, storm }
//
// Enums mempunyai fitur layaknya kelas yang memiliki attribute dan behaviour. Dengan begitu, kita dapat memberikan variabel ataupun constructor di dalam Enums.

// enum Weather {
//   sunny(15),
//   cloudy(34),
//   rain(69),
//   storm(83);
//
//   final int rainAmount;
//
//   const Weather(this.rainAmount);
// }


// void main() {
//   var weatherForecast = Weather.cloudy;
//
//   print(weatherForecast);
// }
//
// enum Weather {
//   sunny(15),
//   cloudy(34),
//   rain(69),
//   storm(83);
//
//   final int rainAmount;
//
//   const Weather(this.rainAmount);
//
//   @override
//   String toString() =>
//       "Today's weather forecast is $name with a $rainAmount% chance of rain";
// }

// Enumerated Types atau enum adalah tipe data khusus dalam Dart yang memungkinkan kita untuk mendefinisikan serangkaian nilai konstan dengan nama yang lebih mudah dibaca dan dipahami. Enum berguna untuk mendefinisikan kumpulan nilai yang terbatas, seperti status, level, atau arah, yang tidak berubah selama program berjalan.

// Kapan Menggunakan Enum?
// Enum ideal untuk:
//
// Situasi di mana ada serangkaian nilai tetap, seperti hari dalam seminggu, level, status, atau arah (Utara, Selatan).
// Penggunaan yang meningkatkan keterbacaan kode, membuat kode lebih mudah dipahami dan bebas dari kesalahan dalam penggunaan string atau angka yang tidak terkontrol.


// 10. Mixins

// Mixin adalah cara menggunakan kembali kode kelas dalam banyak hirarki kelas. Konsep mixin mungkin adalah konsep yang baru bagi Anda karena konsep ini tidak ada pada bahasa C# atau Java. Jadi kenapa dan kapan kita perlu menggunakan mixin?

// Mixin adalah fitur dalam Dart yang memungkinkan kita untuk "menyematkan" fungsionalitas dari kelas lain ke dalam kelas yang ada, tanpa menggunakan pewarisan secara langsung. Ini memungkinkan kita untuk menggabungkan perilaku dari beberapa kelas tanpa harus mengikuti hierarki pewarisan tradisional. Dengan mixin, kita bisa menambahkan metode dan properti dari kelas-kelas lain ke dalam suatu kelas dengan lebih fleksibel.

// Contoh Mixin
// Misalnya, kita memiliki beberapa perilaku umum yang bisa diterapkan pada kelas hewan, seperti berjalan dan berenang:

// mixin Berjalan {
//   void berjalan() {
//     print("Sedang berjalan.");
//   }
// }
//
// mixin Berenang {
//   void berenang() {
//     print("Sedang berenang.");
//   }
// }

// Kita bisa membuat kelas yang menggunakan kedua mixin tersebut tanpa harus membuat kelas induk yang sama untuk semua hewan yang bisa berjalan dan berenang:

// class Bebek with Berjalan, Berenang {
//   void info() {
//     print("Ini adalah bebek.");
//   }
// }
//
// void main() {
//   Bebek bebek = Bebek();
//   bebek.info(); // Output: Ini adalah bebek.
//   bebek.berjalan(); // Output: Sedang berjalan.
//   bebek.berenang(); // Output: Sedang berenang.
// }

// Pada contoh ini:
//
// Bebek menggunakan with diikuti oleh nama mixin Berjalan dan Berenang.
// Bebek mewarisi metode berjalan dari Berjalan dan metode berenang dari Berenang.

// Mixin dengan Pewarisan
// Dart memungkinkan mixin untuk digunakan bersama dengan pewarisan, sehingga Anda bisa menggunakan extends dan with dalam satu kelas. Misalnya:

// class Hewan {
//   void makan() {
//     print("Sedang makan.");
//   }

// Dalam contoh ini, Kucing:
//
// Mewari
// // }
// //
// // class Kucing extends Hewan with Berjalan {
// //   void suara() {
// //     print("Meong!");
// //   }
// // }
// //
// // void main() {
// //   Kucing kucing = Kucing();
// //   kucing.makan();    // Output: Sedang makan.
// //   kucing.berjalan(); // Output: Sedang berjalan.
// //   kucing.suara();    // Output: Meong!
// // }si properti dan metode dari Hewan.
// Menggunakan mixin Berjalan, sehingga bisa memanggil metode berjalan().

// Kapan Menggunakan Mixin?
// Mixin ideal untuk:
//
// Berbagi Fungsionalitas yang sama di antara kelas-kelas yang berbeda.
// Menghindari Hierarki Pewarisan Kompleks: Jika Anda hanya ingin menambahkan fungsi tertentu tanpa memaksakan hubungan "is-a" (misalnya, tidak setiap hewan adalah perenang, tetapi beberapa hewan bisa berenang).
// Menghindari Penggunaan Inheritance ketika hanya perlu menambahkan beberapa metode atau properti.

// void main() {
//   var arielNoah = Musician();
//   arielNoah.perform();
// }
//
// abstract class Performer {
//   void perform();
// }
//
// mixin Dancer implements Performer {
//   @override
//   void perform() {
//     print('Dancing');
//   }
// }
//
// mixin Singer implements Performer {
//   @override
//   void perform() {
//     print('Singing');
//   }
// }
//
// class Musician extends Performer with Dancer, Singer {
//   void showTime() {
//     perform();
//   }
// }


// 11. Extension Method

// Tujuan dari fitur ini adalah supaya kita bisa membuat fungsionalitas tambahan dari library yang sudah ada.

// void main() {
//   var unsortedNumbers = [2, 5, 3, 1, 4];
//   print(unsortedNumbers);
//
//   var sortedNumbers = unsortedNumbers.sortAsc();
//
//   print(sortedNumbers);
// }
//
// extension Sorting on List<int> {
//   List<int> sortAsc() {
//     var list = this;
//     var length = this.length;
//
//     for (int i = 0; i < length - 1; i++) {
//       int min = i;
//       for (int j = i + 1; j < length; j++) {
//         if (list[j] < list[min]) {
//           min = j;
//         }
//       }
//
//       int tmp = list[min];
//       list[min] = list[i];
//       list[i] = tmp;
//     }
//
//     return list;
//   }
// }

// Kita juga bisa menggunakan kembali extension method ini di beberapa berkas yang berbeda sebagai library.

// import 'extension.dart';
//
// void main() {
//   var unsortedNumbers = [2, 5, 3, 1, 4];
//   print(unsortedNumbers);
//   var sortedNumbers = unsortedNumbers.sortAsc();
//   print(sortedNumbers);
// }

// Extension Method di Dart adalah fitur yang memungkinkan kita menambahkan metode baru pada kelas yang sudah ada, tanpa harus mengubah atau membuat subkelas dari kelas tersebut. Ini sangat berguna saat kita ingin memperluas fungsi pada kelas tertentu, terutama kelas bawaan atau kelas dari pustaka eksternal, tanpa harus mengubah kode asli kelas tersebut.
//
// Cara Membuat Extension Method
// Untuk membuat extension method, kita menggunakan kata kunci extension diikuti oleh nama ekstensi, kemudian kata kunci on, dan nama kelas yang ingin kita tambahkan metode baru.
//
// Contoh
// Misalkan kita ingin menambahkan metode capitalize() pada tipe data String untuk mengubah huruf pertama string menjadi huruf besar.

// extension StringExtension on String {
//   String capitalize() {
//     if (this.isEmpty) return this;
//     return '${this[0].toUpperCase()}${this.substring(1)}';
//   }
// }
//
// void main() {
//   String kata = "halo";
//   print(kata.capitalize()); // Output: Halo
// }

// Pada contoh ini:
//
// StringExtension adalah nama ekstensi.
// on String berarti kita menerapkan ekstensi ini pada kelas String.
// Metode capitalize() membuat huruf pertama string menjadi kapital.


// contoh Anonymoos Function
// void main() {
//   var sum = (int num1, int num2) => num1 + num2;
//
//   Function printLambda = () => print('This is lambda function');
//
//   // Memanggil nama variabel dari anonymous function
//   print(sum(3, 4));
//   printLambda();
// }