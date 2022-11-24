import 'package:dart_poo/3_Inicializadores/cliente.dart';

// Tome muito cuidado com o LATE e o ! (FORCE NON NULL)

void main(List<String> args) {
  var cliente = Cliente(nome: "teste cliente");
  cliente.nome = "luiz";
  cliente.nome = "Danny";
  print(cliente.nome);
}

/**
 * Ocorre um erro em tempo de execução
 */