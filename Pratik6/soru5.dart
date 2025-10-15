/*Kamera sınıfı — [id, marka, renk, fiyat] ile getter/setter; 
3 nesne oluşturma ve yazdırma*/
// file: camera_example.dart
class Kamera {
  int _id;
  String _marka;
  String _renk;
  double _fiyat;

  // Kurucu
  Kamera({required int id, required String marka, required String renk, required double fiyat})
      : _id = id,
        _marka = marka,
        _renk = renk,
        _fiyat = fiyat;

  // Getter'lar
  int get id => _id;
  String get marka => _marka;
  String get renk => _renk;
  double get fiyat => _fiyat;

  // Setter'lar
  set marka(String m) => _marka = m;
  set renk(String r) => _renk = r;
  set fiyat(double f) {
    if (f >= 0) {
      _fiyat = f;
    } else {
      throw ArgumentError('Fiyat negatif olamaz');
    }
  }

  String details() =>
      'Kamera(id: $_id, marka: $_marka, renk: $_renk, fiyat: \$${_fiyat.toStringAsFixed(2)})';
}

void main() {
  // 3 Kamera nesnesi
  var k1 = Kamera(id: 1, marka: 'Canon', renk: 'Siyah', fiyat: 999.99);
  var k2 = Kamera(id: 2, marka: 'Nikon', renk: 'Gri', fiyat: 850.0);
  var k3 = Kamera(id: 3, marka: 'Sony', renk: 'Beyaz', fiyat: 1200.5);

  // Getter ile erişim ve yazdırma
  print(k1.details());
  print(k2.details());
  print(k3.details());

  // Bir özelliği setter ile değiştirme örneği
  k3.fiyat = 1100.0;
  print('Güncellenmiş: ${k3.details()}');
}