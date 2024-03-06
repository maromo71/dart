import 'dart:io';

void main(List<String> args) {
  bool teste = false;
  print("Digite sua idade: ");
  var strIdade = stdin.readLineSync()!;
  int idade = int.parse(strIdade);
  if (idade > 10) teste = true;
  if (teste) {
    print("Verd");
  } else {
    print("Falso");
  }
}
