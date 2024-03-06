/// A classe `Calculadora` oferece operações matemáticas simples.
///
/// Este é um exemplo de como documentar uma classe Dart. Os métodos `soma` e `subtracao`
/// são operações básicas fornecidas por esta classe.
class Calculadora {
  /// Soma dois números e retorna o resultado.
  ///
  /// Recebe dois inteiros [a] e [b] como argumentos e retorna a soma de ambos.
  ///
  /// Exemplo:
  /// ```dart
  /// final calculadora = Calculadora();
  /// final resultado = calculadora.soma(2, 3);
  /// print(resultado); // 5
  /// ```
  int soma(int a, int b) {
    return a + b;
  }

  /// Subtrai o segundo número do primeiro e retorna o resultado.
  ///
  /// Recebe dois inteiros [a] e [b] como argumentos e retorna a diferença de [a] - [b].
  ///
  /// Exemplo:
  /// ```dart
  /// final calculadora = Calculadora();
  /// final resultado = calculadora.subtracao(5, 2);
  /// print(resultado); // 3
  /// ```
  int subtracao(int a, int b) {
    return a - b;
  }
}

void main(List<String> args) {
  Calculadora calculadora = Calculadora();
  print(calculadora.soma(5, 6));
}
