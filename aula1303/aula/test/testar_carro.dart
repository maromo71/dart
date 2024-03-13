import '../model/carro.dart';

void main() {
  Carro carro1 = new Carro("Fiat", "Uno", 2000, 12000.0);
  carro1.aumentarVelocidade(100);
  carro1.diminuirVelocidade();
  print(carro1);
}
