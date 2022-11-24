import 'package:dart_poo/2_construtores/pessoa.dart';

void main(List<String> args) {
  var pessoa = Pessoa('Luiz Jr', 28, 'M');

  print(pessoa.nome);
  print(pessoa.idade);
  print(pessoa.sexo);
}
