import 'dart:io';

void main(List<String> args) {
  bool eh_votante = false;
  print("Digite sua idade: ");
  var strIdade = stdin.readLineSync()!;
  var idade = int.parse(strIdade);
  if (idade >= 18) {
    eh_votante = true;
  }
  if (eh_votante) print("Compareca na eleicao");
}
