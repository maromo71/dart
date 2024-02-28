void main(List<String> args) {
  dynamic nome = "Ricardo";
  dynamic valor = 10;
  print(nome);
  print("Tipo da variável valor: ");
  print(valor.runtimeType);
  valor = "10 barris";
  print("Tipo da variável valor: ");
  print(valor.runtimeType);
}
