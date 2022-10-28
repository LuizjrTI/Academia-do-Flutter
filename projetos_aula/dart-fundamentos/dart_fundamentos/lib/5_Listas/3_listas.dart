void main(List<String> args) {
  final numeros = [1, 2, 3, 4];
  print(numeros);
  numeros.add(1);
  print(numeros);
//                   0         1       2
  final nomes = ['Rodrigo', 'joão', 'Maria'];
  print(nomes);
  nomes.add('Luiz');
  print(nomes);
  print(nomes[3]);
  // Inserir em uma posição especifica
  nomes.insert(0, "danny");
  print(nomes);
  print(nomes[0]);

  nomes.addAll(['T4kuma', 'Teste', 'Flutter']);
  print(nomes);

  nomes.remove('T4kuma');
  print(nomes);

  nomes.removeWhere((nomes) {
    print("Nome Procurado $nomes");
    if (nomes == 'danny') {
      return true;
    } else {
      return false;
    }
  });
  print(nomes);
  //Printar o primeiro elemento
  print(nomes[0]);
  print(nomes.first);
  //Printar o ultimo elemento
  print(nomes[nomes.length - 1]);
  print(nomes.last);

  final numerosGerados = List.generate(10, (index) => index + 1);
  print(numerosGerados);

  final stringGerados = List.generate(10, (index) => "# ${index + 1}");
  print(stringGerados);

  final repeticoes = List.filled(10, "Brazil");
  print(repeticoes);

  final numerosGerados2 = List.generate(100, (index) => index + 1);
  var somaTotal = numerosGerados2.fold<int>(
      0, (previousValue, numero) => previousValue = previousValue + numero);

  print(somaTotal);

  // Spread operator (...)
  var listaNumerosSpread = [1, 2, 3];
  var listaNumerosSpreadB = [...listaNumerosSpread, 4, 5, 6];

  print(listaNumerosSpreadB);

// collection if

  var promocaoAtiva = true;
  var produtos = [
    "cerveja",
    "refrigerante",
    if (promocaoAtiva) 'Suco de laranja'
  ];

  print(produtos);

  // collection for
  var listaInts = [1, 2, 3];
  var listaStrings = ['#0', for (var i in listaInts) '#$i'];

  print(listaStrings);
}
