//Cinsiyet [erkek, kadın, diğerleri] için bir enum sınıfı oluşturan ve tüm değerleri yazdıran bir dart programı yazın.

// file: gender_enum.dart
enum Cinsiyet { erkek, kadin, digerleri }

void main() {
  // Tüm enum değerlerini yazdırmak için values özelliğini kullanıyoruz
  for (var g in Cinsiyet.values) {
    print(g); // Enum değerinin tam gösterimini verir: Cinsiyet.erkek vb.
  }

  // Eğer sadece isim kısmını almak isterseniz:
  for (var g in Cinsiyet.values) {
    print(g.toString().split('.').last); // sadece 'erkek', 'kadin', 'digerleri'
  }
}