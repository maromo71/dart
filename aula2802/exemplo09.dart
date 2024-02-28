void main(List<String> args) {
  var aprovados = ["Ana", "Ricardo", "Paulo"];
  //imprimir o ricardo
  print(aprovados.elementAt(1));
  //imprimir a lista
  print(aprovados);
  //adicionar mais um na lsita
  aprovados.add("Julia");
  //percorrer a lista e imprimir um a um.
  print("Listando um a um");
  aprovados.forEach((aprovado) {
    print(aprovado);
  });
}
