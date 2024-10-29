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


void main() {
  if (true) {
    print("It's true");
  } else {
    print("It's False");
  }
}

/// Output:
/// It's true