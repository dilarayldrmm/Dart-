//1 den n'e kadar Doğal sayıların toplamını hesaplayan bir dart programı yazınız.
import 'dart:io';

void main() {
  stdout.write('Bir sayı girin: ');
  int n = int.parse(stdin.readLineSync()!);

  int toplam = 0;

  for (int i = 1; i <= n; i++) {
    toplam += i; // toplam = toplam + i
  }

  print('1\'den $n\'e kadar olan doğal sayıların toplamı: $toplam');
}
