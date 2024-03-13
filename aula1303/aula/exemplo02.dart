void main(List<String> args) {
  imprimir(10, 20);
  imprimir("Ola ", "povo");
  imprimir("Comprei o total de pecas: ", 15);
}

void imprimir(dynamic a, dynamic b) {
  print(a.toString() + b.toString());
}
