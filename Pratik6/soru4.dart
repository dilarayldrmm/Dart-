/*4) [id, name, color] özelliklerine
 sahip bir Animal sınıfı oluşturan bir dart programı yazın.
  Cat adında başka bir sınıf oluşturun ve
   bu sınıfı Animal sınıfından genişletin. 
   String'e sound adında yeni özellikler ekleyin. 
   Bir Cat nesnesi oluşturun ve tüm detayları yazdırın.*/
   // file: animal_cat.dart
class Animal {
  int id;
  String name;
  String color;

  Animal({required this.id, required this.name, required this.color});

  String details() => 'Animal(id: $id, name: $name, color: $color)';
}

// Animal'dan kalıtım alan Cat sınıfı
class Cat extends Animal {
  String sound; // Cat'e özgü yeni özellik

  Cat({
    required int id,
    required String name,
    required String color,
    required this.sound,
  }) : super(id: id, name: name, color: color);

  // Cat için detayları genişletiyoruz
  @override
  String details() => 'Cat(id: $id, name: $name, color: $color, sound: $sound)';
}

void main() {
  // Bir Cat nesnesi oluşturuyoruz
  var kitty = Cat(id: 1, name: 'Minnak', color: 'Beyaz', sound: 'Miyav');

  // Tüm detayları yazdırma
  print(kitty.details());
}