void main(List<String> args) {
  var notas = [10, 6, 10, 8, 5, 7, 8, 10, 5];
  bool Function(int) filtrarNotasBoas = (nota) => nota >= 7;
  var notasBoas = notas.where(filtrarNotasBoas);
  print(notas);
  print(notasBoas);
}
