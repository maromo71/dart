import 'dart:math';

void main(List<String> args) {
  juntar(30, 10);
  juntar("Bom dia ", "Tudo bem?");
  juntar("Valor do PI: ", pi);
}

dynamic juntar(dynamic a, dynamic b) {
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}
