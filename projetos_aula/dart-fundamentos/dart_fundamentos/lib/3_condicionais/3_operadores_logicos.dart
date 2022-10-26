void main(List<String> args) {
  // Operadores Lógicos
  // && (e) todas as condições tem que ser verdade

  final sexo = "M";
  final idade = 27;

  /**
   * if (sexo == "M") {
    if (idade >= 18) {
      print("Pode entrar");
    } else {
      print("Não pode entrar");
    }
  } else {
    print("Não pode entrar");
  }
   */

  if (sexo == 'M' && idade >= 18) {
    print("Pode entrar");
  } else {
    print("Não pode entrar");
  }

  // Operador || (ou) um das condições precisam ser verdade
  if (sexo == 'M' || idade >= 18) {
    print("Pode entrar");
  } else {
    print("Não pode entrar");
  }

  // ! (não)
  if (!(sexo == "M" && idade >= 18)) {
    print("Pode entrar");
  } else {
    print("Não pode entrar");
  }

  if (!(idade >= 18)) {
    print("É menor de idade");
  }
}
