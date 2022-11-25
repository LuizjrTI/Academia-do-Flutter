import 'package:dart_poo/10_mixins/joao.dart';

void main(List<String> args) {
  // João é um Artista
  // João é um Cantor
  // João é um Dançarino
  Joao joao = Joao();

  print(joao.habilidade());
  print(joao.cantar());
  print(joao.dancar());
}
