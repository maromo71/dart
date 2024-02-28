void main(List<String> args) {
  var reprovados = ['Ana', 'Paulo', 'Oscar'];
  print(reprovados.runtimeType);
  print(reprovados);
  print(reprovados[1]);
  print(reprovados.elementAt(2));
  reprovados.add('Silvia');
  print('');
  print('Nova lista: ');
  reprovados.forEach((x) {
    print(x);
  });
}
