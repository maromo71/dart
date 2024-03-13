void main(List<String> args) {
  var l = [1, 2, 3, 4, 5, 6, 7, 8];
  print(elementroDoCentro(l));
  var l2 = ["Maria", "Helena", "Luiza", "Julia", "Lucas", "Pedro"];
  print(elementroDoCentro(l2));
}

E? elementroDoCentro<E>(List<E> lista) {
  if (lista.length > 0) {
    return lista[lista.length ~/ 2];
  }
  return null;
}
