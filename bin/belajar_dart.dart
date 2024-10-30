import 'package:belajar_dart/belajar_dart.dart' as belajar_dart;

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
void greetNewUser({required String name, required int age, bool isVerified = false}) {}