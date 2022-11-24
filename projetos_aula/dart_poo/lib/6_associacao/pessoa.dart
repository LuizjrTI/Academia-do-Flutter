class Pessoa {
  String? nome;
  //Composição
  // Quando um atributo de associação é obrigatorio
  // Nós estamos falando de composição!!!
  Endereco endereco = Endereco();

  //Agregação
  // Quando um atributo de associação não é obrigatorio
  // Nós estamos falando de agregação!!!
  Telefone? telefone;
}

class Telefone {}

class Endereco {}
