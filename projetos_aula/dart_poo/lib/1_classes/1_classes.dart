import 'package:dart_poo/1_classes/camiseta.dart';

void main(List<String> args) {
  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';

  print('''
        Camiseta:
            Tamanho: ${camisetaNike.tamanho}
            Cor: ${camisetaNike.cor}
            Marca: ${camisetaNike.marca}
            Tipo de Lavagem: ${camisetaNike.tipoDeLavagem()}
  ''');

  var camisetaAddidas = Camiseta();
  camisetaAddidas.tamanho = 'G';
  camisetaAddidas.cor = 'Preta';
  camisetaAddidas.marca = 'Addidas';

  print('''
        Camiseta:
            Tamanho: ${camisetaAddidas.tamanho}
            Cor: ${camisetaAddidas.cor}
            Marca: ${camisetaAddidas.marca}
            Tipo de Lavagem: ${camisetaAddidas.tipoDeLavagem()}
  ''');
}
