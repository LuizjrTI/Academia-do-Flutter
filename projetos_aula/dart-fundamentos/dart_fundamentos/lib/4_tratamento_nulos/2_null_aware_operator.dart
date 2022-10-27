String? nome;
void main(List<String> args) {
  var sobrenome = 'Jr';
  var nomeCompleto = (nome ?? 'Rodrigo') + sobrenome;

  print(nomeCompleto);
}
