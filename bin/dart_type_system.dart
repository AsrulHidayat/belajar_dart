// DART TYPE SYSTEM

// 1. Pengenalan Dart Type System

// type system adalah sistem logis yang terdiri dari seperangkat aturan yang menetapkan properti atau tipe ke berbagai konstruksi program komputer, seperti variabel, expression, fungsi, atau modul.

// Type system ini memformalkan atau memberikan standar kategori tersirat yang digunakan programmer untuk tipe data, struktur data, atau komponen lainnya.

// Dart menyebut type system-nya sebagai sound type system. Soundness ini berarti program Anda tidak akan pernah bisa memasuki keadaan di mana sebuah ekspresi mengevaluasi nilai yang tidak cocok dengan jenis tipenya.

// Sound type system pada Dart ini sama dengan type system pada Java atau C#. Di mana kondisi soundness ini dicapai dengan menggunakan kombinasi pemeriksaan statis (compile-time error) dan pemeriksaan saat runtime. Sebagai contoh, menetapkan String ke variabel int adalah kesalahan compile-time. Casting Object ke String dengan as String akan gagal ketika runtime jika objek tersebut bukan String.

// Manfaat dari sound type system ini, antara lain:

// Mengungkap bug terkait tipe pada saat compile time.
// Sound type system memaksa kode untuk tidak ambigu tentang tipenya, sehingga bug terkait tipe yang mungkin sulit ditemukan saat runtime, bisa ditemukan pada waktu kompilasi.
// Kode lebih mudah dibaca.
// Kode menjadi lebih mudah dibaca karena Anda dapat mengandalkan nilai yang benar-benar memiliki tipe yang ditentukan. Tipe pada Dart tidak bisa berbohong.
// Kode lebih mudah dikelola.
// Ketika Anda mengubah satu bagian kode, type system dapat memperingatkan Anda tentang bagian kode mana yang baru saja rusak.
// Kompilasi ahead of time (AOT) yang lebih baik.
// Kode yang dihasilkan saat kompilasi AOT menjadi jauh lebih efisien.


// 2. Generic

// Jika Anda perhatikan pada dokumentasi collection seperti List, sebenarnya tipe dari List tersebut adalah List<E>. Tanda <...> ini menunjukkan bahwa List adalah tipe generic, tipe yang memiliki tipe parameter. Menurut coding convention dari Dart, tipe parameter dilambangkan dengan satu huruf kapital seperti E, T, K, atau V.

// Secara umum generic merupakan konsep yang digunakan untuk menentukan tipe data yang akan kita gunakan. Kita bisa mengganti tipe parameter generic pada Dart dengan tipe yang lebih spesifik dengan menentukan instance dari tipe tersebut.

// List<int> numberList = [1, 2, 3, 4, 5];
// List<String> stringList = ['Dart', 'Flutter', 'Android', 'iOS'];
// List dynamicList = [1, 2, 3, 'empat'];  // List<dynamic>

// Tipe parameter yang digunakan pada variabel list di atas adalah int, maka nilai yang bisa kita masukkan adalah nilai dengan tipe int. Begitu juga jika kita menentukan tipe parameter String, maka tipe yang bisa kita masukkan ke dalam list hanya berupa String.

// Dari kasus di atas kita bisa simpulkan bahwa Dart membantu kita menghasilkan kode yang type safe dengan membatasi tipe yang bisa digunakan ke dalam suatu objek dan menghindari bug. Selain itu generic juga bermanfaat mengurangi duplikasi kode. Misalnya ketika Anda perlu untuk menyimpan objek cache bertipe String dan int. Alih-alih membuat dua objek StringCache dan IntCache, Anda bisa membuat satu objek saja dengan memanfaatkan tipe parameter dari generic.

// void main() {
//   List<Bird> birdList = [Bird(), Dove(), Duck()];
// }
//
// class Animal {}
//
// class Bird implements Animal {}
//
// class Dove implements Bird {}
//
// class Duck implements Bird {}


// 3. Type inference

// Type Inference (Inferensi Tipe) adalah fitur dalam bahasa pemrograman yang memungkinkan compiler atau interpreter menentukan tipe data dari suatu variabel secara otomatis berdasarkan nilai yang diinisialisasikan. Di Dart, fitur ini sangat berguna karena memungkinkan kode menjadi lebih ringkas dan tetap kuat secara tipe, tanpa harus selalu menuliskan tipe variabel secara eksplisit.

// Bagaimana Type Inference Bekerja?
// Ketika Anda mendeklarasikan sebuah variabel dan memberikan nilai awal padanya, Dart akan menginfersikan tipe variabel tersebut sesuai dengan nilai yang diberikan. Misalnya, jika Anda memberikan nilai berupa angka, Dart akan mengenali variabel itu sebagai tipe int atau double, tergantung pada nilai yang Anda berikan.

// Contoh Type Inference di Dart
// 1. Inferensi Tipe dengan var

// void main() {
//   var age = 25;       // Dart menginfersikan age sebagai int
//   var name = "Asrul"; // Dart menginfersikan name sebagai String
//   var price = 19.99;  // Dart menginfersikan price sebagai double
//
//   print(age.runtimeType);   // Output: int
//   print(name.runtimeType);  // Output: String
//   print(price.runtimeType); // Output: double
// }

// Dalam contoh ini:

// Dart secara otomatis mengenali age sebagai int, name sebagai String, dan price sebagai double tanpa kita harus menyatakan tipe tersebut secara eksplisit.

// 2. Inferensi Tipe dengan final dan const
// Dart juga bisa melakukan inferensi tipe pada variabel yang dideklarasikan dengan final dan const.

void main() {
  final country = "Indonesia"; // Dart menginfersikan country sebagai String
  const pi = 3.14159;          // Dart menginfersikan pi sebagai double

  print(country.runtimeType); // Output: String
  print(pi.runtimeType);      // Output: double
}


// Manfaat Type Inference
// Kode Lebih Ringkas: Anda tidak perlu menuliskan tipe secara eksplisit, sehingga kode menjadi lebih mudah dibaca.
// Konsistensi Tipe: Walaupun tipe tidak didefinisikan secara eksplisit, Dart tetap menjaga konsistensi tipe sehingga error terkait tipe dapat dideteksi saat compile time.
// Efisiensi Pengembangan: Dengan type inference, pengembangan bisa lebih cepat karena Anda tidak perlu menentukan tipe variabel secara manual setiap kali mendeklarasikan variabel baru.

// Catatan Penting
// Inferensi Tipe Tidak Sama dengan Tipe Dinamis: Meskipun Anda tidak menyebutkan tipe, variabel tetap memiliki tipe yang ditentukan saat compile time (misalnya int, String, dll).
// dynamic Tipe: Jika Anda menggunakan dynamic, Dart tidak akan melakukan type inference dan variabel akan bisa menyimpan tipe data apapun.