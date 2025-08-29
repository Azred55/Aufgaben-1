import 'dart:io';

void main() {
  print('Hallo Taschenrechenr');

  stdout.write('GIb deine Zahl ein');
  String? ersteEingabe = stdin.readLineSync();

  stdout.write('GIb deine zweite Zahl ein');
  String? zweiteEingabe = stdin.readLineSync();

  stdout.write('Operator eingeben');
  String? operator = stdin.readLineSync();

  double? zahl1 = double.tryParse(ersteEingabe ?? '');
  double? zahl2 = double.tryParse(zweiteEingabe ?? '');

  if (zahl1 == null || zahl2 == null || operator == null) {
    print('Ungültige Eingabe.');
    return;
  }

  double? ergebniss;

  if (operator == '+') {
    ergebniss = zahl1 + zahl2;
  } else if (operator == '-') {
    ergebniss = zahl1 - zahl2;
  } else if (operator == '*') {
    ergebniss = zahl1 * zahl2;
  } else if (operator == '/') {
    if (zahl2 == 0) {
      print('Geteilt durch 0 geht nichtg!');
      return;
    }

    ergebniss = zahl1 / zahl2;
  } else {
    print('operator unbekannt: $operator');
    return;
  }

  print('Ergebnis: $zahl1 $operator $zahl2 = $ergebniss');
}
