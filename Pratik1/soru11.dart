//Hesabı bölüştürme tutarını hesaplayan bir program yazın.Formula= (total bill amount) / number of people
import 'dart:io';

void main() {
  stdout.write('Toplam hesap tutarı: ');
  double toplam = double.parse(stdin.readLineSync()!);

  stdout.write('Kişi sayısı: ');
  int kisi = int.parse(stdin.readLineSync()!);

  double kisiBasi = toplam / kisi;
  print('Kişi başı ödenecek tutar: $kisiBasi');
}