void main(List<String> args) {
  var notas = [10, 6, 7, 8, 10, 4, 3];
  var notasBoas = [];
  for (var x in notas) {
    if (x >= 7) {
      notasBoas.add(x);
    }
  }
  print(notas);
  print(notasBoas);
}
