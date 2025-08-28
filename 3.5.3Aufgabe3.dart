int countVowels(String text) {
  const String vowels = "aeiouAEIOU";

  int count = 0;
  for (int i = 0; i < text.length; i++) {
    if (vowels.contains(text[i])) {
      count++;
    }
  }
  return count;
}

void main() {
  print("Anzahl der Vokale in 'Bye': ${countVowels("Bye")}");
  print(
    "Anzahl der Vokale in 'Heute ist ein schlechter Tag': ${countVowels("Heute ist ein schlechter Tag")}",
  );
  print(
    "Anzahl der Vokale in 'Bald ist Wochenende Deniz': ${countVowels("Bald ist Wochende Deniz")}",
  );
}
