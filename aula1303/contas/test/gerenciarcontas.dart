import 'dart:io';

import '../model/conta.dart';

List<Conta> contas = [];
void main() {
  int opcao = 0;
  do {
    Future.delayed(Duration(seconds: 2));
    stdout.write('\x1B[2J\x1B[0;0H');
    print("Selecione uma opção:");
    print("1 - Criar conta");
    print("2 - Listar contas");
    print("3 - Depositar em uma conta");
    print("4 - Sacar de uma conta");
    print("5 - Mostrar Saldo de uma conta");
    print("9 - Sair");
    opcao = int.parse(stdin.readLineSync().toString());
    switch (opcao) {
      case 1:
        execCriar();
        break;
      case 2:
        execListar();
        break;
      case 3:
        execDepositar();
        break;
      case 4:
        execSacar();
        break;
      case 5:
        execMostrar();
        break;
      case 9:
        print("Fim do programa");
        break;
      default:
        print("Opção inválida");
        stdin.readLineSync();
    }
  } while (opcao != 9);
}

void execMostrar() {
  print("Selecione uma conta");
  for (int i = 0; i < contas.length; i++) {
    print("${i} - ${contas[i].nome}");
  }
  int opcao = int.parse(stdin.readLineSync().toString());
  print(contas[opcao].toString());
  stdin.readLineSync();
}

void execSacar() {
  print("Selecione uma conta");
  for (int i = 0; i < contas.length; i++) {
    print("${i} - ${contas[i].nome}");
  }
  int opcao = int.parse(stdin.readLineSync().toString());
  print("Digite o valor");
  double valor = double.parse(stdin.readLineSync().toString());
  var sacou = contas[opcao].sacar(valor);
  if (sacou) {
    print("Operação de saque concluída");
  } else {
    print("Saldo insuficiente");
  }
  stdin.readLineSync();
}

void execDepositar() {
  print("Selecione uma conta");
  for (int i = 0; i < contas.length; i++) {
    print("${i} - ${contas[i].nome}");
  }
  int opcao = int.parse(stdin.readLineSync().toString());
  print("Digite o valor");
  double valor = double.parse(stdin.readLineSync().toString());
  contas[opcao].depositar(valor);
  print("Operação de depósito concluída");
  stdin.readLineSync();
}

void execListar() {
  for (int i = 0; i < contas.length; i++) {
    print(contas[i].toString());
  }
  stdin.readLineSync();
}

void execCriar() {
  print("Criando uma nova conta");
  print("Digite o nome");
  String nome = stdin.readLineSync().toString();
  print("Digite o número da conta");
  String conta = stdin.readLineSync().toString();
  contas.add(Conta(nome, conta));
  print("Conta criada com sucesso");
  stdin.readLineSync();
}
