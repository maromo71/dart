void main(List<String> args) {
  saudarPessoa(nome: "Marcos", idade: 12);
  saudarPessoa(idade: 13, nome: "Carlos");
  saudarPessoa();
}

saudarPessoa({String? nome, int? idade}) {
  print("Ola $nome nem parece que voce tem $idade anos");
}
