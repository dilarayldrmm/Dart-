//String'deki tüm boşlukları kaldıran bir programı Dart'ta yazın.
import 'dart:io';

void main() {
  stdout.write('Bir metin girin: ');
  String? text = stdin.readLineSync();

  print('Boşluksuz hali: ${text!.replaceAll(' ', '')}');
}