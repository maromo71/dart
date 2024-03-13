//parametros opcionais []
import 'dart:math';

void main(List<String> args) {
  int num = gerar(30);

  int num2 = gerar();
  print("Maximo [30]: $num");
  print("Maximo [100]: $num2");
}

int gerar([int max = 100]) {
  return Random().nextInt(max);
}
