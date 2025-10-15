//İki tam sayının bölümünü ve kalanını bulan bir program yazınız.

import 'dart:io';

void main() {
  // Kullanıcıdan iki tam sayı al
  stdout.write('Birinci ouıcvfgd girin: ');
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write('İkinci sayıyı girin: ');
  int num2 = int.parse(stdin.readLineSync()!);

  // Bölüm ve kalan hesapla
  int bolum = num1 ~/ num2; // Tam sayı bölümü
  int kalan = num1 % num2;  // Kalan

  // Sonuçları yazdır
  print('\nBölüm: $bolum');
  print('Kalan: $kalan');
}