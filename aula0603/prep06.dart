void main(List<String> args) {
  var valores = [23, 3, 3, 45, 60, 10];
  var soma = 0;
  for (var x in valores) {
    print(x);
    soma += x;
  }
  print("Soma dos valores: $soma");
}
