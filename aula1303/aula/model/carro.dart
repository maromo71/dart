class Carro {
  String? marca;
  String? modelo;
  int? ano;
  double? preco;
  int _velocidade = 0;

  Carro(this.marca, this.modelo, this.ano, this.preco);

  @override
  String toString() {
    return 'Carro { marca: $marca, modelo: $modelo, ano: $ano, velocidade: $_velocidade, preco: $preco }';
  }

  void aumentarVelocidade([int velocidadeAumentada = 10]) {
    _velocidade += velocidadeAumentada;
  }

  void diminuirVelocidade([int velocidadeDiminuida = 10]) {
    _velocidade -= velocidadeDiminuida;
  }

  get velocidade => _velocidade;
}
