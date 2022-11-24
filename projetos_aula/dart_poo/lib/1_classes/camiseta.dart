/**
 *  Atributos 
 *  Comportamentos
 * 
 * 
 *  Modificadores de acesso
 *  - public
 *  - private
 * 
 */

class Camiseta {
  String? tamanho;
  //String? _cor; // atibuto privado
  String? cor; // atibuto publico
  String? marca;

  //Atributo de Classe
  static const String nome = 'camiseta';

  //Metodo de classe
  static String recuperarNome() => nome;

  String tipoDeLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na maquina';
    } else {
      return 'Pode lavar na maquina';
    }
  }
}
