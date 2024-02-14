void main(List<String> args) {
  var produtos = {'marcos', 'pedro', '10 morangos'};
  print(produtos);
  print(produtos is Set);
  produtos.add('morango');
  produtos.add('morango');
  produtos.add('morango');
  print(produtos);
}
