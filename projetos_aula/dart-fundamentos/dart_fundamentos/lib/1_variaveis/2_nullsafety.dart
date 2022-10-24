//Precisa ser inicializada ou usar o operador ? para permitir valores null
// Variaveis de nivel superior não podem ser inicializadas depois
// Não é permitido
// String nomeCompletoSuperior;
String? nomeCompletoSuperior;

void main() {
  /**
   * Variaveis locais não precisam ser inicializadas de cara porem
   * pode ser criadas sem valor e depois ser atribuido um valor
   */

  String? nomeCompleto;
  nomeCompleto = "Luiz Junior";

  // Variaveis locais que são nulas por padrão
  // Se fir atribuido um valor a ela, automaticamente elas são
  // promovidas a null safety non-null

  /**
   * if (nomeCompleto != null) {
        print(nomeCompleto.length);
      }
   */

  //Variaveis de nivel superior (GLOBAL) NUNCA são promovidas para não Nulo(non-null)
  nomeCompletoSuperior = '';

  // vc deve sempre evitar sempre o operador "!"
  //print(nomeCompleto!.length);
  print(nomeCompleto.length);
}
