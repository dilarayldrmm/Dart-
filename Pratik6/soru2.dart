//2) House sınıfı — [id, name, price]; kurucu, 3 nesne, listeye ekleme ve yazdırma
// file: house_example.dart
import 'dart:io';

class House {
  int id;
  String name;
  double price;

  // Kurucu
  House({required this.id, required this.name, required this.price});

  String details() => 'House(id: $id, name: $name, price: \$${price.toStringAsFixed(2)})';
}

void main() {
  // 3 House nesnesi oluşturma
  var h1 = House(id: 1, name: 'Seaside Villa', price: 250000.0);
  var h2 = House(id: 2, name: 'City Apartment', price: 120000.5);
  var h3 = House(id: 3, name: 'Country Cottage', price: 90000.75);

  // Bu nesneleri bir listeye ekleme
  List<House> houses = [h1, h2, h3];

  // Listeyi dolaşıp tüm ayrıntıları yazdırma
  for (var house in houses) {
    print(house.details());
  }
}