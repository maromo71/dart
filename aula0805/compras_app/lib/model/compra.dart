class Compra {
  final String? nomeProduto;
  final double? valorProduto;

  Compra({required this.nomeProduto, required this.valorProduto});

  @override
  String toString() {
    return 'Compra: {produto: $nomeProduto, valor: $valorProduto}';
  }
}
