// Dart'ta basit faizi bulan bir program yazın.
// Formül: (p * t * r) / 100
// p = anapara (başlangıçtaki para miktarı)
// t = süre (yıl olarak)
// r = faiz oranı (% cinsinden)

// Kullanıcıdan veri almak için dart:io kütüphanesini ekliyoruz
import 'dart:io';

void main() {
  // Kullanıcıdan giriş alma işlemleri ----------------------------

  // Kullanıcıdan anaparayı (p) girmesini istiyoruz.
  // stdout.write: ekrana yazı yazar ama alt satıra geçmez.
  stdout.write('Anaparayı (p) girin: ');
  
  // stdin.readLineSync(): kullanıcıdan girdi alır (String olarak döner)
  // double.parse(): String olan değeri ondalıklı sayıya (double) çevirir.
  double p = double.parse(stdin.readLineSync()!);

  // Kullanıcıdan süreyi (t) yıl olarak istiyoruz.
  stdout.write('Süreyi (t - yıl olarak) girin: ');
  double t = double.parse(stdin.readLineSync()!);

  // Kullanıcıdan faiz oranını (r) istiyoruz.
  // Örneğin kullanıcı %5 faiz oranı için 5 yazacak.
  stdout.write('Faiz oranını (r) girin: ');
  double r = double.parse(stdin.readLineSync()!);

  // -------------------------------------------------------------
  // Şimdi basit faizi hesaplayalım.
  // Formül: (p * t * r) / 100
  //
  // p = anapara
  // t = yıl cinsinden süre
  // r = faiz oranı (%)
  //
  // Örnek: p = 1000, t = 2, r = 5
  // Basit Faiz = (1000 * 2 * 5) / 100 = 100
  double simpleInterest = (p * t * r) / 100;

  // -------------------------------------------------------------
  // Sonucu ekrana yazdırıyoruz.
  print('\nBasit Faiz: $simpleInterest');
}