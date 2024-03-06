import 'dart:math';

/// Programa para gerar seis numeros para megasena [1 e 60]
void main(List<String> args) {
  for (var numero = 1; numero <= 10; numero++) {
    List<int> jogo = [0, 0, 0, 0, 0, 0]; //06 numeros iniciais
    var tem = false;
    var contador = 0;
    do {
      tem = false;
      int gerado = Random().nextInt(60) + 1;

      /// for deve ser percorrido para controlar se houve repetição ou não do valor gerado
      for (var i = 0; i < contador; i++) {
        if (jogo[i] == gerado) {
          tem = true;
          break;
        }
      }

      if (tem) continue; //volta para gerar um novo sem alterar a contagem
      jogo[contador] = gerado;
      contador++;
    } while (contador < 6);
    jogo.sort();

    print("Seu $numero.) jogo para megasena: " + jogo.toList().toString());
  }
}
