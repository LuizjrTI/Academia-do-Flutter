void main(List<String> args) {
  // ? = Nullable (Aceita Nulo)
  // Sem nada (padrão) = non-null (Não aceita nulo)

  // Não pode ser nulo
  var nomes = [];
  //Aceita Nulo
  List<String>? nomesNulos;

  // Lista não pode ser nula e nem os itens
  List<String> nomesInternosNaoAceitaNulos = ['Rodrigo'];
  // Lista não pode ser nula mas os itens internos podem ser nulos
  List<String?> nomesInternosAceitaNulos = ['Rodrigo', null, 'luiz'];
  // Lista pode ser nula e os itens tambem podem ser nulos
  List<String?>? nomesInternosAceitaNulos1 = null;
}
