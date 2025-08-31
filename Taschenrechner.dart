import 'dart:io';

double? readNumber(String prompt) {
  stdout.write(prompt);
  return double.tryParse(
    (stdin.readLineSync() ?? '').trim().replaceAll(',', '.'),
  );
}

void main() {
  print('Hallo Taschenrechner');

  final zahl1 = readNumber('Gib deine erste Zahl ein: ');
  final zahl2 = readNumber('Gib deine zweite Zahl ein: ');

  stdout.write('Operator eingeben (+, -, *, /): ');
  final operator = stdin.readLineSync()?.trim();

  if (zahl1 == null || zahl2 == null || operator == null) {
    print('Ungültige Eingabe.');
    return;
  }

  double ergebnis;

  switch (operator) {
    case '+':
      ergebnis = zahl1 + zahl2;

    case '-':
      ergebnis = zahl1 - zahl2;

    case '*':
      ergebnis = zahl1 * zahl2;

    case '/':
      if (zahl2 == 0) {
        print('Geteilt durch 0 geht nicht!');
        return;
      }
      ergebnis = zahl1 / zahl2;

    default:
      print('Operator unbekannt: $operator');
      return;
  }

  print('Ergebnis: $zahl1 $operator $zahl2 = $ergebnis');
}
