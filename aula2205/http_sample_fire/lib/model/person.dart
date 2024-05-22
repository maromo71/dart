///Modelo de pessoa
class Person {
  final String name;
  final int age;
  final String key;

  ///Construtor
  ///[name] nome da pessoa
  ///[age] idade da pessoa
  ///[key] identificador da pessoa
  Person(this.name, this.age, this.key);

  ///Convertendo de um json para o modelo
  Person.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'],
        key = json['key'];
}
