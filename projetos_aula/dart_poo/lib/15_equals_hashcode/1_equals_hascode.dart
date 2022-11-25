import 'package:dart_poo/15_equals_hashcode/pessoa.dart';

void main(List<String> args) {
  String nome = 'teste nome';
  String nome2 = 'teste nome';

  if (nome == nome2) {
    print('É igual');
  } else {
    print('Não é igual');
  }

  Pessoa p1 = Pessoa(nome: 'nome', email: 'email');
  Pessoa p2 = Pessoa(nome: 'nome', email: 'email');

  print(p1.hashCode);
  print(p2.hashCode);

  print(p1);

  if (p1 == p2) {
    print('É igual');
  } else {
    print('Não é igual');
  }
}
