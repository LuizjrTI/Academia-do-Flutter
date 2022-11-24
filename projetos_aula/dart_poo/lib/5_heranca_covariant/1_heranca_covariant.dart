import 'package:dart_poo/5_heranca_covariant/banana.dart';

import 'macaco.dart';

void main(List<String> args) {
  var macaco = Macaco();
  macaco.comer(Banana(tipo: 'nanica'));
}
