class Aluno {
  String? nome;
  double? nota;
  String? email;

  @override
  String toString() {
    return 'Name: $nome, Nota: $nota, Email: $email';
  }

  Aluno({this.email, this.nome, this.nota});
}

void main(List<String> args) {
  var aluno = new Aluno(nome: 'João', nota: 9.0);
  aluno.email = 'a@a.com';
  print(aluno);
}
