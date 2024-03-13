void main(List<String> args) {
  var alunos = [
    {'nome': 'João', 'nota': 9.9},
    {'nome': 'Maria', 'nota': 9.3},
    {'nome': 'Pedro', 'nota': 7.8},
    {'nome': 'Ana', 'nota': 8.1},
    {'nome': 'Lucas', 'nota': 6.7},
    {'nome': 'Joaquim', 'nota': 10.0},
  ];
  String Function(Map) pegarApenasOsNomes = (aluno) => aluno['nome'];

  int Function(String) pegarTotalDeLetras = (texto) => texto.length;

  var nomes = alunos.map(pegarApenasOsNomes).toList();
  print("Nome da lista: $nomes");

  var totalLetras = nomes.map(pegarTotalDeLetras);
  print("Total de letras: $totalLetras");
}
