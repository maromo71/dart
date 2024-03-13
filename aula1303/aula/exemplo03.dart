void main(List<String> args) {
  imprimir(1, 1, 2000);
  imprimir(1, 1);
  imprimir(1);
}

void imprimir(int dia, [int mes = 12, int ano = 1990]) {
  print("Data: $dia/$mes/$ano");
}
