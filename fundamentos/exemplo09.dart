void main(List<String> args) {
  var fones = {
    'Maromo': '19-99999-9999',
    'Pedro': '19-88888-8888',
  };

  print(fones);
  print('Telefone do Maromo é: ' + fones['Maromo'].toString());
  print(fones.keys);
  print(fones.values);
  print(fones.length);
  for (var element in fones.keys) {
    print(element);
  }
}
