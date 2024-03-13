import 'dart:math';

void main(List<String> args) {
  int soma = somar(12, 4);
  print(soma);
  int somarDois = somarDoisAleatorios();
  print(somarDois);
}

int somar(int a, int b) {
  return a + b;
}

int somarDoisAleatorios() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  return n1 + n2;
}
