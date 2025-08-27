void reverseInitials(String name, String nachname) {
  String lastNameBuchstabe = name[name.length - 1].toUpperCase();
  String lastNachnameBuchstabe = nachname[nachname.length - 1].toUpperCase();

  print("$lastNameBuchstabe. $lastNachnameBuchstabe.");
}

void main() {
  reverseInitials("Johnny", "Depp");
  reverseInitials("Tom", "Cruise");
  reverseInitials("Deniz", "Deniz");
}
