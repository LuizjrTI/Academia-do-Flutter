void main(List<String> args) {
  //      inicio     condição       incremento
  // for(var i = 0; i <nomes.length; i++)

  var numero = 0;
  print("While Convencional");

  while (numero <= 10) {
    print(numero);
    numero++;
  }

  // DoWhile
  var indice = 0;
  while (indice > 0) {
    print(indice);
    indice++;
  }

  do {
    print(indice);
    //indice++;
  } while (indice > 0);
}
