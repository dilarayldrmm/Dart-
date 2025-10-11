//evden işe uzaklığınız 25 km ve saatte 40 km yol kat ediyorsunuz. İşe ulaşma sürenizi dakika cinsinden hesaplayan bir program yazın.Formula= (distance) / (speed)
void main() {
  double distance = 25; // km
  double speed = 40; // km/saat

  double timeHours = distance / speed;
  double timeMinutes = timeHours * 60;

  print('İşe ulaşma süresi: $timeMinutes dakika');
}