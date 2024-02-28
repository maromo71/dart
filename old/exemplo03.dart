void main() {
  var quantidade = 10;
  var preco = 1.89;
  var total = quantidade * preco;
  print('A quatidade pedida foi $quantidade e o preco é R\$ $preco = $total');
  print('total formatado: R\$ ' + total.toStringAsFixed(2));
}
