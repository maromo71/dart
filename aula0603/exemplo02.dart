import 'dart:io';

void main(List<String> args) {
  print("Digite uma letra e tecle enter: ");
  String? letra = stdin.readLineSync()!.toLowerCase();
  switch (letra) {
    case "a":
    case "e":
    case "i":
    case "o":
    case "u":
      print("letra é vogal");
      break;
    default:
      print("letra não é vogal");
  }
}
