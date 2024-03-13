import 'dart:math';

void main(List<String> args) {
  soma(2, 3);
  int c = 3;
  int d = 4;
  soma(c, d);
  somaDoisNumerosQuaisquer();
}

void soma(int a, int b) {
  print(a + b);
}

void somaDoisNumerosQuaisquer() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print("Os valores sorteados foram $n1 e $n2");
  print(n1 + n2);
}
