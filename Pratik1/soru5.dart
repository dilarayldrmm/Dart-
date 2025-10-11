//Kullanıcı girdisini kullanarak bir sayının karesini yazdıran bir program yazın

import 'dart:io';

void main() {
  // Kullanıcıdan sayı al
  stdout.write('Bir sayı girin: ');
  double number = double.parse(stdin.readLineSync()!);

  // Sayının karesini hesapla
  double square = number * number;

  // Sonucu ekrana yazdır
  print('Girdiğiniz sayının karesi: $square');
}