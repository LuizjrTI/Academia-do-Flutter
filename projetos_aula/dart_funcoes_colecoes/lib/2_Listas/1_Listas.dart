void main(List<String> args) {
  var numeros = List.generate(10, ((index) => index + 1));

  numeros.forEach(print);

  //Expand
  // Array Bidimencioanl
  var lista = [
    [1, 2],
    [3, 4],
  ];
  print(lista);

  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  // any
  final listaBusca = ['Luiz', 'Rodrigo', 'Joao'];

  if (listaBusca.any((element) => element == 'Joao')) {
    print("Joao está na lista");
  } else {
    print('Joao não está na lista');
  }

  //every
  final listaBusca2 = ['Luiz', 'Rodrigo', 'Joao'];
  if (listaBusca2.every((element) => element.contains("J"))) {
    print("Todos os nomes tem a letra J");
  } else {
    print("Nem todos os nomes tem a letra J");
  }

  //Sort
  final listaParaOrdenacao = [99, 22, 10, 765, 1, 2, 3, 100, 300, 1000];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  final listaParaOrdenacao2 = ['Luiz', 'Rodrigo', 'Joao'];
  listaParaOrdenacao2.sort();
  print(listaParaOrdenacao2);

  final pacientes = [
    'Luiz Jr | 27',
    'Suzana | 35',
    'Testes | 10',
    'Bolsonaro | 1000'
  ];
  pacientes.sort();
  //print(pacientes);

  pacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split("|");
    final pacienteDados2 = paciente2.split("|");

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(pacientes);

  //compare to

  final pacientes2 = [
    'Luiz Jr | 27',
    'Suzana | 35',
    'Testes | 10',
    'Bolsonaro | 1000'
  ];
  pacientes2.sort();
  //print(pacientes2);

  pacientes2.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split("|");
    final pacienteDados2 = paciente2.split("|");

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(pacientes2);
}
