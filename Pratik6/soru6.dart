/*6) Bottle arayüzü (interface) ve CokeBottle ile factory constructor kullanımı*/
// file: bottle_example.dart

// 'Bottle' bir arayüz gibi davranacak şekilde abstract class olarak tanımlanır.
// Aynı zamanda bir factory constructor içerir ve bu constructor CokeBottle örneği döndürür.
abstract class Bottle {
  factory Bottle() => CokeBottle(); // Fabrika oluşturucu: Bottle() çağrılırsa CokeBottle döner

  void open();
}

// CokeBottle Bottle'ı uygular
class CokeBottle implements Bottle {
  CokeBottle(); // varsayılan kurucu

  @override
  void open() {
    print('Coke Bottle is opened');
  }

  @override
  String toString() => 'CokeBottle()';
}

void main() {
  // Fabrika oluşturucusunu kullanarak Bottle örnekleme
  Bottle bottle = Bottle(); // Bu satır CokeBottle() döndürecek
  print(bottle); // CokeBottle() toString() çıktısı
  bottle.open(); // "Coke Bottle is opened" yazdırır
}