void main(List<String> args) {
  final idade = 12;

  if (idade >= 18) {
    print("Maior de idade");
  } else {
    print("Menor de idade");
  }

  // condicao ? faca algo : outra coisa
  final eMaiorDeIdade = idade >= 18 ? true : false;
  print("É maior de idade? " + eMaiorDeIdade.toString());
}
