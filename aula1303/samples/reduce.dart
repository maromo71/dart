num somar(num x, num y) {
  return x + y;
}

String juntar(String x, String y) {
  return "$x,$y";
}

void main(List<String> args) {
  List<num> notas = [6.6, 3.3, 4.4, 5.0, 5, 10, 9.9, 8.8, 7.7, 6.6];

  var nomes = ["João", "Maria", "Pedro"];

  var total = notas.reduce(somar);
  print(total);

  var nomesConcatenados = nomes.reduce(juntar);
  print(nomesConcatenados);
}
