class Conta {
  String nome;
  String numeroConta;
  double _saldo = 0.0;

  Conta(this.nome, this.numeroConta);

  @override
  String toString() {
    return 'Conta{nome: $nome, numeroConta: $numeroConta, saldo: $saldo}';
  }

  void depositar(double valor) {
    if (valor <= 0) {
      print("Valor inválido");
      return;
    }
    this._saldo += valor;
  }

  bool sacar(double valor) {
    if (valor <= saldo) {
      this._saldo -= valor;
      return true;
    }
    return false;
  }

  double get saldo => this._saldo;
}
