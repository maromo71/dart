void main(List<String> args) {
  apresentarFuncionario(nome: "Caio", salario: 2000.00);
  apresentarFuncionario(salario: 5000, nome: "Mariana");
  apresentarFuncionario(nome: "Joaquim");
}

void apresentarFuncionario({String? nome, double? salario}) {
  print("Nome: $nome, seu salaário é: ${salario ?? 0.0}");
}
