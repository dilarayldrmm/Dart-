//Toplama, çıkarma, çarpma ve bölme işlemlerini yapan basit bir hesap makinesi oluşturmak için bir dart programı yazın.
import 'dart:io';

void main() {
  stdout.write('Birinci sayıyı girin: ');
  double sayi1 = double.parse(stdin.readLineSync()!);

  stdout.write('İkinci sayıyı girin: ');
  double sayi2 = double.parse(stdin.readLineSync()!);

  stdout.write('Yapmak istediğiniz işlemi seçin (+, -, *, /): ');
  String? islem = stdin.readLineSync();

  double sonuc;

  if (islem == '+') {
    sonuc = sayi1 + sayi2;
    print('Sonuç: $sonuc');
  } else if (islem == '-') {
    sonuc = sayi1 - sayi2;
    print('Sonuç: $sonuc');
  } else if (islem == '*') {
    sonuc = sayi1 * sayi2;
    print('Sonuç: $sonuc');
  } else if (islem == '/') {
    if (sayi2 != 0) {
      sonuc = sayi1 / sayi2;
      print('Sonuç: $sonuc');
    } else {
      print('Bir sayı sıfıra bölünemez!');
    }
  } else {
    print('Geçersiz işlem girdiniz!');
  }
}