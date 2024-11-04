// FUNCTIONAL STYLES

// 1. Paradigma Functional Programming

// Functional programming adalah paradigma pemrograman di mana proses komputasi didasarkan pada fungsi matematika murni. Functional programming (FP) ditulis dengan gaya deklaratif yang berfokus pada “what to solve” dibandingkan “how to solve” pada gaya imperatif.

// Pure Function

// Pure functions berarti sebuah fungsi bergantung pada argumen atau parameter yang dimasukkan ke dalamnya. Sehingga pemanggilan fungsi dengan nilai argumen yang sama akan selalu memberikan hasil yang sama pula. Contohnya pada fungsi sum() berikut nilai yang dikembalikan akan bergantung pada argumen yang diberikan.

// int sum(int num1, int num2) {
//   return num1 + num2;
// }

// Recursion

// Pada functional programming tidak ada konsep perulangan seperti for atau while. Iterasi pada functional programming dilakukan melalui rekursi atau pemanggilan fungsi dari fungsi itu sendiri, hingga mencapai kasus dasar.

// int fibonacci(n) {
//   if (n <= 0) {
//     return 0;
//   } else if(n == 1) {
//     return 1;
//   } else {
//     return fibonacci(n - 1) + fibonacci(n - 2);
//   }
// }

// Immutable variables

// Variabel pada functional programming bersifat immutable, artinya kita tidak bisa mengubah sebuah variabel ketika sudah diinisialisasi. Alih-alih mengubah nilai variabel, kita bisa membuat variabel baru untuk menyimpan data. Mekanisme ini bertujuan agar kode kita menjadi lebih aman karena state dari aplikasi tidak akan berubah sepanjang aplikasi berjalan.

// var x = 5;
// x = x + 1; // Contoh variable yang tidak immutable

// Functions are first-class citizen and can be higher-order

// Maksud dari function merupakan first-class citizen adalah bahwa function berlaku sama seperti komponen pemrograman yang lain. Sebuah fungsi bisa dimasukkan ke variabel menjadi parameter dalam suatu fungsi dan juga menjadi nilai kembalian pada fungsi. Higher order functions adalah fungsi yang mengambil fungsi lain sebagai argumen dan juga dapat mengembalikan fungsi.


// 2. Anonymous Functions

// Kebanyakan fungsi pada Dart memiliki nama seperti sum(), main(), atau print(). Pada Dart kita bisa membuat fungsi yang tidak bernama alias nameless atau anonymous. Anonymous function ini juga dikenal dengan nama lambda.

// Untuk membuat lambda atau anonymous function kita cukup menuliskan tanda kurung untuk menerima parameter dan body function-nya.

// void main() {
//       (int num1, int num2) {
//     return num1 + num2;
//   };
// }

// Kita bisa menggunakan keyword var atau secara eksplisit menggunakan tipe data Function.

// void main() {
//   var sum = (int num1, int num2) => num1 + num2;
//
//   Function printLambda = () => print('This is lambda function');
//
//   // Memanggil nama variabel dari anonymous function
//   print(sum(3, 4));
//   printLambda();
// }

