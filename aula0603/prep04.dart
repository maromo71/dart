import 'dart:io';

void main(List<String> args) {
  int soma = 0;
  do {
    print("Digite o valor a ser somado: ");
    var valor = int.parse(stdin.readLineSync()!);
    soma += valor;
  } while (soma < 50);
  print("Valor total da soma: $soma");
}
