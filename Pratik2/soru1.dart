//Sayının tek mi çift mi olduğunu kontrol eden bir dart programı yazın.
import 'dart:io';

void main() {
  stdout.write('Bir sayı girin: ');
  int sayi = int.parse(stdin.readLineSync()!);

  if (sayi % 2 == 0) {
    print('$sayi çift bir sayıdır.');
  } else {
    print('$sayi tek bir sayıdır.');
  }
}