import 'package:dart_poo/16_ordenacao_default/cliente.dart';

void main(List<String> args) {
  Cliente cliente1 = Cliente(nome: 'Luiz jr', telefone: '123456789');
  Cliente cliente2 = Cliente(nome: 'Luiz', telefone: '123456789');
  Cliente cliente3 = Cliente(nome: 'Danny', telefone: '123456789');
  Cliente cliente4 = Cliente(nome: 'Teste', telefone: '123456789');

  var lista = [cliente1, cliente2, cliente3, cliente4];
  print(lista);

  //lista.sort((cliente1, cliente2) => cliente1.nome.compareTo(cliente2.nome));
  lista.sort();

  print(lista);
}
