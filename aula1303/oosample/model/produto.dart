class Produto {
  int codigo;
  String descricao;
  int _quantidade = 0;
  double preco;

  Produto(this.codigo, this.descricao, this.preco);

  void comprar(int quantidade) {
    if (quantidade < 0) {
      print('Quantidade inválida');
      return;
    }
    this._quantidade += quantidade;
  }

  void vender(int quantidade) {
    if (quantidade > this._quantidade) {
      print('Quantidade indisponível');
      return;
    }
    this._quantidade -= quantidade;
  }

  int get quantidade {
    return this._quantidade;
  }
}
