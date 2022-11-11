void main(List<String> args) {
  /**
   * Mapa é uma representação chave : valor
   */
  final dados = {'nome': 'Luiz', 'profissao': 'Dev Junior'};

  /**
   * O mapa pode ser criado nulo mas se for criado deve conter a chave e o valor
   */
  Map<String, String>? pacienteNullSafety = null;
  /**
   * O mapa e o valor não podem ser nulo mas a chave pode ser nula
   */
  Map<String?, String> pacienteNullSafety2 = {null: 'Rodrigo'};
  /**
   * O mapa e a chave não podem ser nulos mas o valor pode ser nulo
   */
  Map<String, String?> pacienteNullSafety3 = {'nome': null};

  var produtos = <String, String>{};
  /**
   * Só será adicionado se a chave não existir
   */
  produtos.putIfAbsent('nome', () => 'cerveja');
  produtos.putIfAbsent('nome', () => 'Agua');
  print(produtos);

  produtos.update('nome', (value) => 'Refrigerante');
  print(produtos);
  produtos.update(
    'preco',
    (value) => '10.50',
    ifAbsent: () => '10.50',
  );

  //Recuperando o valor

  //print('Produto ${produtos['nome']}');
  //print('Preco ${produtos['preco']}');

  produtos.forEach((key, value) {
    print('$key : $value');
  });

  for (var entry in produtos.entries) {
    print('${entry.key} : ${entry.value}');
  }

  for (var key in produtos.keys) {
    print('Chaves : $key');
  }

  for (var value in produtos.values) {
    print('Valor: $value');
  }

  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key + 'nova', value.toUpperCase());
  });

  print(novoMapaProdutos);

  var mapa = <String, Object>{
    'nome': 'Carioca',
    'cursos': [
      {'nome': 'Guerra Urbana', 'descricao': 'Combantes em ambientes urbanos'},
      {'nome': 'Contra Terrorismo', 'descricao': 'filosofia e atuação'}
    ]
  };

  print(mapa['cursos']);
}
