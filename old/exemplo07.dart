void main(List<String> args) {
  dynamic nome = "Marcos";
  dynamic idade = 23;

  print(nome);
  print(idade);
  print(idade.runtimeType);
  idade = "49 anos";
  print(idade);
  print(idade.runtimeType);
}
