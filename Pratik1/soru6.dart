// Kullanıcı girdisini kullanarak bir kişinin adı ve soyadından tam adını yazdıran bir program yazın.

import 'dart:io'; 
// 'dart:io' kütüphanesi, terminal (konsol) üzerinden kullanıcıdan veri almamızı sağlar.
// Yani kullanıcı klavyeden bir şey yazınca program onu okuyabilir.

void main() {
  // Kullanıcıdan ad al -----------------------------------------------------

  // stdout.write() ekrana mesaj yazar ama alt satıra geçmez.
  // Yani kullanıcıdan bir şey girmesini beklerken aynı satırda kalır.
  stdout.write('Adınızı girin: ');

  // stdin.readLineSync() → kullanıcıdan girdi alır (String olarak döner).
  // String? → nullable tür, yani değer boş da olabilir.
  String? firstName = stdin.readLineSync();


  // Kullanıcıdan soyad al --------------------------------------------------

  // Aynı şekilde kullanıcıdan soyadı ister.
  stdout.write('Soyadınızı girin: ');
  String? lastName = stdin.readLineSync();


  // Tam adı oluşturma ------------------------------------------------------

  // String birleştirme (interpolasyon) işlemi yapılır.
  // '$firstName $lastName' ifadesi, iki değişkeni arada bir boşluk bırakarak birleştirir.
  String fullName = '$firstName $lastName';


  // Sonucu ekrana yazdır ---------------------------------------------------

  // print() ekrana yazı yazar ve alt satıra geçer.
  // '\n' baştaki satır atlama karakteridir (önce bir satır boşluk bırakır).
  print('\nTam adınız: $fullName');
}