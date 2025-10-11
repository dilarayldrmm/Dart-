//Bir karakterin sesli harf mi yoksa sessiz harf mi olduğunu kontrol eden bir dart programı yazın.
import 'dart:io';

void main() {
  stdout.write('Bir harf girin: ');
  String harf = stdin.readLineSync()!.toLowerCase();

  if (harf.length != 1) {
    print('Lütfen sadece bir karakter girin!');
    return;
  }

  if ('aeiouöüı'.contains(harf)) {
    print('$harf bir sesli harftir.');
  } else if (RegExp(r'^[a-zğüşöçı]$').hasMatch(harf)) {
    print('$harf bir sessiz harftir.');
  } else {
    print('Bu bir harf değil!');
  }
}