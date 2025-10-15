//[id, name, ram] özelliklerine sahip bir Laptop sınıfı oluşturan ve bu sınıftan 3 nesne oluşturup tüm detayları yazdıran bir dart programı yazın.
// file: laptop_example.dart
import 'dart:io';

class Laptop {
  int id;
  String name;
  int ram; // GB cinsinden

  // Kurucu (constructor)
  Laptop({required this.id, required this.name, required this.ram});

  // Nesnenin tüm detayını string olarak döndüren yardımcı metot
  String details() => 'Laptop(id: $id, name: $name, ram: ${ram}GB)';
}

void main() {
  // 3 Laptop nesnesi oluşturuyoruz
  var l1 = Laptop(id: 1, name: 'Dell Inspiron', ram: 8);
  var l2 = Laptop(id: 2, name: 'HP Pavilion', ram: 16);
  var l3 = Laptop(id: 3, name: 'MacBook Air', ram: 8);

  // Tüm detayları yazdırma
  print(l1.details());
  print(l2.details());
  print(l3.details());
}