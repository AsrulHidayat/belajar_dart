// DART FUTURES

// 1. Pengenalan Dart Futures

// Synchronous vs Asynchronous

// Dalam synchronous program, kode program dijalankan secara berurutan dari atas ke bawah. Artinya jika kita menuliskan dua baris kode maka baris kode kedua tidak bisa dieksekusi sebelum kode baris pertama selesai dieksekusi.

// Dalam asynchronous program, jika kita menuliskan dua baris kode, kita dapat membuat baris kode kedua dieksekusi tanpa harus menunggu kode pada baris pertama selesai dieksekusi.

// Program asynchronous memungkinkan suatu operasi bisa berjalan sembari menunggu operasi lainnya selesai. Umumnya kita memanfaatkan asynchronous pada operasi yang besar dan membutuhkan waktu lama, seperti mengambil data dari internet atau API, menyimpan data ke database, dan membaca data dari sebuah berkas.


// 2. Future

// Future adalah sebuah objek yang mewakili nilai potensial atau kesalahan yang akan tersedia pada suatu waktu di masa mendatang.
// Anda dapat membayangkan future sebagai sebuah kotak paket. Saat Anda menerima paket tersebut, akan ada tiga kondisi yang mungkin terjadi, antara lain paket

// masih tertutup (uncompleted),
// paket dibuka lalu berisi barang sesuai pesanan (completed with data),
// dan paket dibuka namun terjadi kesalahan atau tidak sesuai (completed with error).

// Penerima dari future dapat menentukan callbacks yang akan menangani nilai atau kesalahan tersebut.


// Contoh Future

void main() {
  final myFuture = Future(() {
    print('Creating the future');
    return 12;
  });
  print('main() done');
}

// hasilnya 'main() done' akan muncul duluan karena seluruh fungsi main akan dieksekusi sebelum fungsi yang ada di dalam Future(). Ini disebabkan karena future masih berstatus uncompleted.

// 2.1 Uncompleted

Future<String> getOrder(){  // nilai yang dikembalikan pada Future berupa String, kita bisa secara eksplisit menentukan tipe parameter generic Future<String>.
  return Future.delayed(Duration(seconds: 3), () {
    return 'Coffee Boba';
  });
}

// delayed berfungsi untuk menunda eksekusi di dalam future

// 2.2 Completed with data

// void main() {
//   getOrder().then((value) { // penggunaan .then
//     print('Your ordered: $value');
//   });
//   print('Getting your order...');
// }
//
// Future<String> getOrder() {
//   return Future.delayed(Duration(seconds: 3), () {
//     return 'Coffee Boba';
//   });
// }

// Hasilnya Fungsi getOrder() akan dijalankan secara asynchronous hingga setelah 3 detik kode Future akan dijalankan dan mengembalikan nilai.

// 2.3 Completed with error

// void main() {
//   getOrder().then((value) {
//     print('Your ordered: $value');
//   }).catchError((error) { // contoh penambahan with error
//     print('Sorry. $error');
//   });
//   print('Getting your order...');
// }
//
// Future<String> getOrder() {
//   return Future.delayed(Duration(seconds: 3), () {
//     var isStockAvailable = false;
//     if (isStockAvailable) {
//       return 'Coffee Boba';
//     } else {
//       throw 'Our stock is not enough.';
//     }
//   });
// }


// Seperti pada fungsi main() ada tiga blok kode yang mewakili state Future:
//
// Fungsi getOrder() yang berisi Future yang masih uncompleted.
// Method then() yang menangani kondisi completed with data.
// Method catchError() yang menangani kondisi completed with error.


// 2.4 whenCompleted(),
// Method ini akan dijalankan ketika suatu fungsi Future selesai dijalankan, tak peduli apakah menghasilkan nilai atau eror. Ini seperti blok finally pada try-catch-finally.

// void main() {
//   getOrder().then((value) {
//     print('Your ordered: $value');
//   }).catchError((error) {
//     print('Sorry. $error');
//   }).whenComplete(() {
//     print('Thank you');
//   });
//   print('Getting your order...');
// }
//
// Future<String> getOrder() {
//   return Future.delayed(Duration(seconds: 3), () {
//     var isStockAvailable = false;
//     if (isStockAvailable) {
//       return 'Coffee Boba';
//     } else {
//       throw 'Our stock is not enough.';
//     }
//   });
// }