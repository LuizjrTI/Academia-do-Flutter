void main(List<String> args) {
  var numeros = List.generate(10, ((index) => index));

  numeros.where((numero) => numero != 5).forEach((numero) => print(numero));

  final numerosAte6 = numeros
      .takeWhile((numero) => numero < 7)
      .where((numero) => numero != 5)
      .toList();

  print(numerosAte6);

  final numerosRemoverAte5 = numeros.skipWhile((numero) => numero < 6).toList();

  print(numerosRemoverAte5);

  var nomes = ['Rodrigo', 'Guilherme', 'Arthur', 'Sandra', 'Marcos'];
  var nomesSkip = nomes.skipWhile((nome) {
    if (nome == 'Arthur') {
      return true;
    } else {
      return false;
    }
  }).toList();
  print(nomesSkip);

  var numeroStrList = numeros.map((numero) {
    return 'numero é $numero';
  }).toList();

  print(numeroStrList);
}
