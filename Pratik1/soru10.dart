//String'i int'e dönüştüren bir Dart programı yazın.
import 'dart:io';

void main() {
  stdout.write('Bir tam sayı girin (string olarak): ');
  String? input = stdin.readLineSync();

  int sayi = int.parse(input!);
  print('Dönüştürülen sayı: $sayi');
}