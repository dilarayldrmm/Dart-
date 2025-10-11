//Adınızı 100 kez yazdıran bir dart programı yazın kullanıcıdan isim alsın 
import 'dart:io';

void main() {
  stdout.write('Adınızı girin: ');
  String isim = stdin.readLineSync()!;

  for (int i = 1; i <= 100; i++) {
    print('$i. $isim');
  }
}