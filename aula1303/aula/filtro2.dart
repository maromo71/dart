void main(List<String> args) {
  var notas = [10, 8, 7.7, 6.5, 3.2, 2, 6, 5, 7];
  bool Function(num) filtrar = (num valor) => valor >= 6;

  var notasBoas = notas.where(filtrar);
  print(notas);
  print(notasBoas);
}
