//Bir sayının pozitif, negatif veya sıfır olup olmadığını kontrol eden bir dart programı yazın.

import 'dart:io';

void main() {
  stdout.write('Bir sayı girin: ');
  double sayi = double.parse(stdin.readLineSync()!);

  if (sayi > 0) {
    print('$sayi pozitif bir sayıdır.');
  } else if (sayi < 0) {
    print('$sayi negatif bir sayıdır.');
  } else {
    print('Sayı sıfırdır.');
  }
}