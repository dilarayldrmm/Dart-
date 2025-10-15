//7) Basit bir quiz uygulaması — kullanıcı oynar, puan görür (console)
// file: simple_quiz.dart
import 'dart:io';

class Question {
  String question;
  List<String> options;
  int correctIndex; // 0 tabanlı

  Question({
    required this.question,
    required this.options,
    required this.correctIndex,
  });
}

void main() {
  // Soruların listesi
  var questions = [
    Question(
      question: 'Dart dilini hangi şirket geliştirdi?',
      options: ['Microsoft', 'Google', 'Apple', 'Facebook'],
      correctIndex: 1,
    ),
    Question(
      question: 'Flutter hangi amaç için kullanılır?',
      options: ['Veritabanı', 'Mobil ve web UI', 'Sunucu yönetimi', 'Ağ güvenliği'],
      correctIndex: 1,
    ),
    Question(
      question: 'int veri tipi hangi türde veriyi tutar?',
      options: ['Ondalıklı sayı', 'Metin', 'Tam sayı', 'Boolean'],
      correctIndex: 2,
    ),
  ];

  print('Basit Quiz uygulamasına hoş geldiniz!');
  stdout.write('İsminiz: ');
  String? name = stdin.readLineSync();
  print('\nMerhaba ${name ?? 'Oyuncu'}, haydi başlayalım!\n');

  int score = 0;
  int qNumber = 1;

  for (var q in questions) {
    print('Soru $qNumber: ${q.question}');
    for (int i = 0; i < q.options.length; i++) {
      print('  ${i + 1}. ${q.options[i]}');
    }

    // Kullanıcıdan cevap al
    int? answer;
    while (answer == null) {
      stdout.write('Cevabınızı girin (1-${q.options.length}): ');
      String? input = stdin.readLineSync();
      if (input == null) continue;
      int? parsed = int.tryParse(input);
      if (parsed != null && parsed >= 1 && parsed <= q.options.length) {
        answer = parsed - 1; // 0 tabanlı index
      } else {
        print('Geçersiz giriş. Lütfen tekrar deneyin.');
      }
    }

    // Doğru mu kontrol et
    if (answer == q.correctIndex) {
      print('Doğru!\n');
      score += 10; // Her doğru için 10 puan
    } else {
      print('Yanlış. Doğru cevap: ${q.options[q.correctIndex]}\n');
    }
    qNumber++;
  }

  // Sonuç gösterme
  print('Quiz tamamlandı! Toplam puan: $score / ${questions.length * 10}');
  if (score == questions.length * 10) {
    print('Tebrikler, tüm soruları doğru bildiniz! 🎉');
  } else if (score >= (questions.length * 10) * 0.6) {
    print('İyi iş — başarılı sayılabilirsiniz.');
  } else {
    print('Daha çok pratik yapmalısınız. Yeniden deneyin!');
  }
}