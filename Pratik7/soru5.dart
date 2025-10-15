int kontrolEt(int? sayi) {
  return sayi ?? 0; // eğer sayi null ise 0 döner
}

void main() {
  print(kontrolEt(5));    // 5 döner
  print(kontrolEt(null)); // 0 döner
}