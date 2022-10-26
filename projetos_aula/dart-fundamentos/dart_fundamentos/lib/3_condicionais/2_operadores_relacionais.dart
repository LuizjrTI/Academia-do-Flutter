void main(List<String> args) {
  // Operadores relacionais
  // Temos 6 tipos
  // == (Igualdade)
  // != (Diferente)
  // > (Maior que)
  // < (Menor que)
  //>= (Maior ou igual)
  // <= (Menor ou igual)

  final idade = 18;
  final tipoPet = 'Gato';

  if (idade == 18) {
    print("Pode tirar habilitação");
  } else if (idade > 18) {
    print("Pode tirar habilitação");
  } else {
    print("Não pode tirar habilitação");
  }

  if (tipoPet != 'Cachorro') {
    print("Desculpe mas não temos nada para seu pet");
  }
}
