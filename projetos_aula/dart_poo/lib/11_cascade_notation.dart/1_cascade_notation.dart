void main(List<String> args) {
  Pessoa pessoa = Pessoa()
    ..nome = 'teste nome'
    ..email = 'email@email.com'
    ..site = 'www.site.com.br'
    ..printPessoa();
  // pessoa.nome = ' teste nome';
  // pessoa.email = ' email@email.com';
  // pessoa.site = 'www.site.com.br';

  var mapa = {}
    ..putIfAbsent('nome', () => 'null')
    ..putIfAbsent('email', () => 'null')
    ..putIfAbsent('site', () => 'null');

  print(mapa);
}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa() => print('''
      Pessoa:
          Nome:${nome}
          Email:${email}
          Site:${site}
''');
}
