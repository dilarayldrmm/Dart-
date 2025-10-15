import 'dart:math';

int? generateRandom() {
  Random random = Random();
  // %50 olasılıkla 100 veya null döndürsün
  return random.nextBool() ? 100 : null;
}

void main() {
  int? result = generateRandom();     // null olabilir
  int status = result ?? 0;           // null ise 0 ata
  print("Status değeri: $status");
}