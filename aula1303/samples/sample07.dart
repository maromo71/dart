void main(List<String> args) {
  saudarPessoa(nome: "Joaquim", idade: 30);
  saudarPessoa(idade: 30, nome: "Joaquim");

  saudarPessoa(idade: 23, nome: "Marmelada");
  saudarPessoa();
}

void saudarPessoa({String? nome, int? idade}) {
  print("Ola $nome, sua idade e $idade");
}
