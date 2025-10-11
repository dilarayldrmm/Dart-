//İki sayıyı birbiriyle değiştiren bir program yazın.
import 'dart:io';

void main() {
  stdout.write('Birinci sayıyı girin: ');
  int a = int.parse(stdin.readLineSync()!);

  stdout.write('İkinci sayıyı girin: ');
  int b = int.parse(stdin.readLineSync()!);

  print('Değiştirmeden önce: a=$a, b=$b');

  int temp = a;
  a = b;
  b = temp;

  print('Değiştirdikten sonra: a=$a, b=$b');
}