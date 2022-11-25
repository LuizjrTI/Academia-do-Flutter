import 'package:dart_poo/9_auto_promocao/carro.dart';
import 'package:dart_poo/9_auto_promocao/gol.dart';
import 'package:dart_poo/9_auto_promocao/uno.dart';

void main(List<String> args) {
  var uno = Uno();
  var gol = Gol();

  // print(uno.velocidadeMaxima());
  // print(gol.velocidadeMaxima());

  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);

  Carro golCarro = Gol();

  // Quando Checamos se a variave é(is) de um tipo
  // Caso ela seja o dart vai automaticamente converter
  // essa instancia para a classe tipo!!!

  if (golCarro is Gol) {
    golCarro.tipoDeRodas();
  }

  // var tipoDeRodas = (golCarro as Gol).tipoDeRodas();
  // print('Tipo de rodas ${tipoDeRodas}');
}

void printarDadosDoCarro(Carro carro) {
  print('''
        Carro:
          Tipo: ${carro.runtimeType}
          Portas: ${carro.portas}
          Rodas: ${carro.rodas}
          Motor: ${carro.motor}
          Velocidade Maxima: ${carro.velocidadeMaxima()}
          Tipo de Rodas: ${carro is Gol ? carro.tipoDeRodas() : 'Não disponivel'}
''');
}
