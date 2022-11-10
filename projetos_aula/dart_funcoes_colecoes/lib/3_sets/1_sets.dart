void main(List<String> args) {
  var numerosListas = <int?>[];

  numerosListas.add(1);
  numerosListas.add(2);
  numerosListas.add(3);
  numerosListas.add(null);
  numerosListas.add(3);
  numerosListas.add(1);
  numerosListas.add(2);

  print(numerosListas);

  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosListas.add(null);
  numerosSet.add(3);
  numerosSet.add(1);
  numerosSet.add(2);

  print(numerosSet);

  print(numerosListas.toSet());

  var numeros1 = {1, 2, 3, 4, 5, 6};
  var numeros2 = {1, 3, 4, 7};

  print(numeros1.difference(numeros2));
  print(numeros2.difference(numeros1));

  print(numeros1.union(numeros2));

  print(numeros1.intersection(numeros2));

  var nomes1 = {'Luiz', 'Danny', 'Suzana'};
  var nomes2 = {'Luiz', 'Dani', 'Teste'};
  print(nomes1.intersection(nomes2));

  print(numeros1.lookup(99));
  print(nomes1.lookup('Danny'));

  nomes1.elementAt(0);
}
