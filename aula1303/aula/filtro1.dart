void main(List<String> args) {
  var notas = [10, 8, 7.7, 6.5, 3.2, 2, 6, 5, 7];
  var notasBoas = [];
  for (var valor in notas) {
    if (valor >= 6) {
      notasBoas.add(valor);
    }
  }

  print(notas);
  print(notasBoas);
}
