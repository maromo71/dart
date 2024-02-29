void main(List<String> args) {
  var produtos = {"coca-cola", "fanta", "sprite", "guarana"};
  print(produtos);
  produtos.add("taí");
  //nao adiciona elementos repetidos, diferente da lista
  produtos.add("fanta");
  print(produtos);
  print(produtos.first);
  print(produtos.length);
  print(produtos.last);
  produtos.forEach((element) {
    print(element);
  });
}
