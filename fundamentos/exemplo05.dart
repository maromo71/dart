import 'dart:io';

main() {
  print('Digite o nome do usuario: ');
  String? nome = stdin.readLineSync();
  print('Nome digitado: ' + nome!);
}
