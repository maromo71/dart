import 'dart:math';

void main(List<String> args) {
  List<int> jogo = [];
  int contador = 0;
  do {
    /// logica para gerar os numeros
    /// valores entre 1 e 60
    var gerado = Random().nextInt(60) + 1;
    if (jogo.contains(gerado)) continue;

    /// volta para gerar o proximo
    jogo.add(gerado);
    contador++;
  } while (contador < 6);

  /// ordenar os numeros
  jogo.sort();
  for (var numero in jogo) {
    print(numero);
  }
}
