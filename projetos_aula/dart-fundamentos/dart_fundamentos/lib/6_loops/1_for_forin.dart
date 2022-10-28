void main(List<String> args) {
  var numeros = List.generate(10, ((index) => index));
  var nomes = ['Rodrigo', 'Luiz', 'Gustavo', 'Teste'];

  // for mais simples
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  // for mais bem implementado
  for (var nome in nomes) {
    print(nome);
  }

  for (var numero in numeros) {
    print(numero);
  }

  // for com break
  for (var i = 0; i < nomes.length; i++) {
    if (nomes[i] == 'Luiz') {
      break;
    }
    print(nomes[i]);
  }

  for (var nome in nomes) {
    if (nome == 'Luiz') {
      break;
    }
    print(nome);
  }

  // for com continue
  for (var i = 0; i < nomes.length; i++) {
    if (nomes[i] == 'Luiz') {
      continue;
    }
    print(nomes[i]);
  }

  for (var nome in nomes) {
    if (nome == 'Luiz') {
      continue;
    }
    print(nome);
  }
}
