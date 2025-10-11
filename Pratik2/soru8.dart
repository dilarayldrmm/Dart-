//1'den 100'e kadar olan sayıları yazdıran ancak 41'i yazdırmayan bir dart programı yazın.
void main() {
  for (int i = 1; i <= 100; i++) {
    if (i == 41) {
      continue; // 41'e gelince bu turu atla
    }
    print(i);
  }
}