import '../model/produto.dart';

void main(List<String> args) {
  var produto = new Produto(12, 'Caneta', 10);
  produto.comprar(30);
  produto.vender(12);

  print("Quantidade de produtos: ${produto.quantidade}");
}
