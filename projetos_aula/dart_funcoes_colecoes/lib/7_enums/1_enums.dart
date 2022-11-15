void main(List<String> args) {
  var cor = Cores.vermelho;
  if (cor == Cores.vermelho) {}

  switch (cor) {
    case Cores.azul:
      // TODO: Handle this case.
      break;
    case Cores.vermelho:
      // TODO: Handle this case.
      break;
    case Cores.laranja:
      // TODO: Handle this case.
      break;
    case Cores.verde:
      // TODO: Handle this case.
      break;
    case Cores.preto:
      // TODO: Handle this case.
      break;
  }

  // Tranformando a string azul em um enum Cores.azul.
  // Antes da versão dart 2.15
  var azul = 'azul';
  var corAzul = Cores.values.where((cor) => cor.toString() == 'Cores.$azul');

  // 2.15 em diante
  print(Cores.azul.name);

  var corAzul215 = Cores.values.byName('azul');
  print(corAzul215);

  var coresMap = Cores.values.asMap();
  print(coresMap);

  var coresNameMap = Cores.values.asNameMap();
  print(coresNameMap);

  var corAzulPeloMap = coresNameMap[azul];
  print(corAzulPeloMap);

  //Cores.values.byName('branco'); Lança uma exceção pq não tem no enum.

  var corBranco = coresNameMap['branco'];
  print(corBranco); //Null
}

enum Cores {
  azul,
  vermelho,
  laranja,
  verde,
  preto,
}
