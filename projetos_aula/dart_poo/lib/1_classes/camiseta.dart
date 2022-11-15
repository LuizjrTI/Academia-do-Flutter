/**
 *  Atributos 
 *  Comportamentos
 * 
 */

class Camiseta {
  String? tamanho;
  String? cor;
  String? marca;

  String tipoDeLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na maquina';
    } else {
      return 'Pode lavar na maquina';
    }
  }
}
