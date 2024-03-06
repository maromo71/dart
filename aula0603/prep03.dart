import 'dart:io';

void main(List<String> args) {
  String? letra;
  print("digite uma letra e tecle [enter]");
  letra = stdin.readLineSync()!.toLowerCase();
  switch (letra) {
    case "a":
    case "e":
    case "i":
    case "o":
    case "u":
      print("Vogal");
      break;
    default:
      print("Não é vogal");
  }
}
