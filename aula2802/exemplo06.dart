import 'dart:io';

void main(List<String> args) {
  String nome;
  print("Digite o seu nome: ");
  nome = stdin.readLineSync()!;
  print(nome);
}
