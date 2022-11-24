class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  //Pessoa();
  // Construtor Default
  Pessoa(
    this.nome,
    this.idade,
    this.sexo,
  );

  // Construtor Nomeados
  Pessoa.semNome({
    this.idade,
    this.sexo,
  });

  Pessoa.vazia();

  // Construtor do tipo factory
  // É utilizado quando temos uma regra de negocio
  // para criação da nossa classe!!!!
  factory Pessoa.fabrica(String nomeConstrutor) {
    var nome = '$nomeConstrutor _Fabrica';
    Pessoa pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return pessoa;
  }
}
