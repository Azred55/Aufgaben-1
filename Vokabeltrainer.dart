import 'dart:io';
import 'dart:math';

Map<String, String> vokabeln = {};

void main() {
  bool running = true;

  print("Willkommen zum Vokabeltrainer");

  while (running) {
    print("Menü:");
    print("1. Neue Vokabel hinzufügen");
    print("2. Vokabeln abfragen");
    print("3. Beenden");
    stdout.write("Bitte wähle eine Option: ");
    String? auswahl = stdin.readLineSync();

    switch (auswahl) {
      case "1":
        vokabelHinzufuegen();

      case "2":
        vokabelnAbfragen();

      case "3":
        print("Danke fürs Üben! Bis zum nächsten Mal");
        running = false;

      default:
        print("Ungültige Eingabe. Bitte versuche es erneut.");
    }
  }
}

void vokabelHinzufuegen() {
  print("Gib das Wort ein: ");
  String? wort = stdin.readLineSync();

  if (wort == null || wort.isEmpty) {
    print("Ungültiges Wort. Abbruch.");
    return;
  }

  print("Gib die Übersetzung ein: ");
  String? uebersetzung = stdin.readLineSync();

  if (uebersetzung == null || uebersetzung.isEmpty) {
    print("Ungültige Übersetzung. Abbruch.");
    return;
  }

  vokabeln[wort] = uebersetzung;
  print("Vokabel '$wort' → '$uebersetzung' wurde hinzugefügt.");
}

void vokabelnAbfragen() {
  if (vokabeln.isEmpty) {
    print("Es sind noch keine Vokabeln gespeichert.");
    return;
  }

  int richtig = 0;
  int gesamt = vokabeln.length;

  List<String> woerter = vokabeln.keys.toList();
  woerter.shuffle(Random());

  for (var wort in woerter) {
    print("Übersetze: $wort → ");
    String? antwort = stdin.readLineSync();

    if (antwort != null &&
        antwort.trim().toLowerCase() == vokabeln[wort]!.toLowerCase()) {
      print("Richtig!");
      richtig++;
    } else {
      print("Falsch! Richtige Antwort: ${vokabeln[wort]}");
    }
  }

  double prozent = (richtig / gesamt) * 100;
  print(
    "Ergebnis: $richtig von $gesamt richtig (${prozent.toStringAsFixed(1)}%).",
  );
}
