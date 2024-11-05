/// EFFECTIVE DART

/// 1. Pengenalan Effective Dart

// Coding convention adalah panduan untuk bahasa pemrograman tertentu yang merekomendasikan gaya pemrograman, praktik, dan metode untuk setiap aspek program yang ditulis dalam bahasa tersebut. Konvensi ini biasanya meliputi indentasi, komentar, deklarasi, penamaan, arsitektur, dll.

// Code convention sangat penting bagi programmer karena beberapa alasan berikut:
//
// 40% - 80% biaya dari sebuah perangkat lunak digunakan untuk pemeliharaan (maintenance).
// Sangat jarang suatu perangkat lunak dipelihara seterusnya oleh penulis aslinya.
// Code convention meningkatkan keterbacaan kode, memungkinkan programmer untuk memahami kode baru dengan lebih cepat dan menyeluruh.
// Source code lebih tertata rapi dan bersih sebagai sebuah produk.

// Dart juga telah mengembangkan coding convention yang bertujuan supaya kita bisa menulis kode yang konsisten, kuat, dan cepat. Convention Dart ini dikenal dengan Effective Dart. Intinya Effective Dart dibuat untuk mewujudkan dua hal:
//
// Be consistent (Konsisten). Ketika membahas tentang formatting akan banyak argumen subjektif tentang mana yang lebih baik. Namun konsistensi tentunya akan sangat membantu secara objektif.

// Be brief (Ringkas). Dart dirancang supaya familiar dengan bahasa pemrograman lain seperti C, Java, JavaScript, dll. Namun Dart ditambah dengan fitur-fitur lain yang belum ditawarkan bahasa lain. Jika ada banyak cara untuk mengungkapkan sesuatu, tentu Anda akan menggunakan cara yang paling ringkas bukan?


/// 2. Panduan Effective Dart

// - Style Guide, aturan dan tata letak kode
// - Docuumentation guide, apa yang boleh dan tidak ada di komentar
// - Usage guide, pemaanfaatan fitur bahasa secara terbaik untuk menerapkan perilaku.
// - Design Guide, mencakup secara luas dan tidak mengikat, seperti bagaimana mendesain API libarary yang konsisten dan bisa digunakan.

/// Rules

// DO, praktik tersebut harus dilakukan
// DONT, bukan merupakan hal yang baik untuk diterapkan
// PREFER, praktik yang harus diikuti tapi ada keadaan juga yang mungkin lebih masuk akal untuk dilakukan.
// AVOID, kebalikan dari PREFER, menjelaskan hal-hal yang tidak boleh dilakukan, namun kemungkinan ada alasan bagus untuk melakukannya pada beberapa kejadian.
// CONSIDER, praktik yang bisa diikuti atau tidak anda ikuti, tergantung pada keadaan dan preferensi sendiri.


/// 3. Ringkasan Aturan Effective Dart

/// 3.1 DO name types using UpperCamelCase.

// Class, enum, typedef, dan type parameter harus menggunakan huruf kapital pada huruf pertama dari setiap kata termasuk kata pertama.

// contoh

// bstract class Animal {}
// abstract class Mammal extends Animal {}
// mixin Flyable {}
// class Cat extends Mammal with Walkable {}

/// 3.2 DON’T use prefix letters.

// Karena Dart dapat memberitahu Anda tipe, cakupan, dan properti lain pada sebuah deklarasi, maka tidak ada alasan untuk menambahkan prefix pada sebuah identifier.

// var instance;  // good
// var mInstance;  // bad

/// 3.3 PREFER starting function or method comments with third-person verbs.

// Sebuah komentar dokumentasi harus fokus menjelaskan apa yang dilakukan kode tersebut. Menambahkan kata kerja dari sudut pandang orang ketiga di awal komentar adalah salah satu cara melakukannya.

// // Returns `true` if [username] and [password] inputs are valid.
// bool isValid(String username, String password) { }

/// 3.3 PREFER a noun phrase for a non-boolean property or variable.

// Seorang developer yang membaca kode kita akan fokus pada apa yang ada pada property. Jika mereka lebih peduli tentang bagaimana suatu property ditentukan, maka lebih baik dibuat menjadi method dengan nama menggunakan kata kerja.

// // Good
// cat.furColor;
// calculator.firstNumber;
// list.length;
//
// // Bad
// list.deleteItems;

// Sementara untuk variabel atau property booleans PREFER gunakan kata kerja non-imperative, seperti:

// list.isEmpty
// dialog.isOpen

/// 3.1 DO use ?? to convert null to a boolean value.

// Aturan ini berlaku ketika sebuah expression dapat mengevaluasi nilai true, false, atau null dan Anda perlu meneruskan hasilnya ke sesuatu yang tidak menerima nilai null.

// if(stock?.isEnough) {
// print('Making you a cup of coffee...');
// }

// Kode di atas akan menghasilkan exception ketika stock-nya null. Untuk mengatasinya kita perlu memberikan nilai default ketika nilai awalnya null. Sehingga kodenya akan menjadi seperti berikut:

// stock?.isEnough ?? false;

/// 3.4 AVOID using curly braces in interpolation when not needed.

// Seperti yang kita tahu, Dart dilengkapi dengan fitur string interpolation untuk menggabungkan nilai string dengan nilai lain secara lebih mudah.

// print('Hi, ${name}, You are ${thisYear - birthYear} years old.');

// Namun jika Anda menginterpolasi identifier sederhana, maka curly braces ({}) tidak perlu ditulis.

// print('Hi, $name, You are ${thisYear - birthYear} years old.');

/// 3.3 PREFER async/await over using raw futures.

// Kode asynchronous bisa jadi sangat sulit untuk dibaca dan di-debug, bahkan ketika menggunakan abstraksi yang bagus seperti Future. Sintaks async-await memungkinkan Anda menuliskan kode asynchronous dengan gaya synchronous sehingga memudahkan membaca kode.

// // raw future
// void main() {
//   getOrder().then((value) {
//     print('You order: $value');
//   })
//       .catchError((error) {
//     print('Sorry. $error');
//   });
//   print('Getting your order...');
// }
//
//
// // async-await
// void main() async {
//   print('Getting your order...');
//   try {
//     var order = await getOrder();
//     print('You order: $order');
//   } catch (error) {
//     print('Sorry. $error');
//   }
// }

/// CONSIDER making the code read like a sentence.

// Penamaan dalam kode baik itu nama variabel, fungsi, maupun lainnya adalah hal yang sangat penting namun juga tidak mudah. Sebagai solusi kita bisa membayangkannya seolah sedang membuat kalimat.

// // “If store is open ...”
// If (store.isOpen)
//
// // “hey garfield, eat!”
// garfield.eat();
//
// // Bad example
// // Ambigu apakah memerintahkan toko untuk tutup atau mendapatkan status dari toko
// If (store.close)

/// 3.5 CONSIDER using function type syntax for parameters.

// Dart memiliki sintaks khusus untuk mendefinisikan parameter yang tipenya adalah fungsi. Caranya yaitu dengan menuliskan tipe kembalian sebelum nama parameter kemudian parameter dari fungsi setelahnya.

// List filter(bool predicate(item)) { }

// Sejak Dart versi 2, terdapat notasi umum untuk tipe fungsi sehingga bisa digunakan untuk parameter berupa fungsi.

// List filter(Function predicate) { }  // function type syntax

