void main(List<String> args) {
  var telefone = {
    "Ana": "(19)9999-9999",
    "Pedro": "(19)8888-8888",
    "Jose": "(11)1111-1111"
  };
  print(telefone);
  print("Telefone de Pedro: " + telefone["Pedro"].toString());
  print(telefone.keys);
  print(telefone.values);
  print(telefone.length);
}
