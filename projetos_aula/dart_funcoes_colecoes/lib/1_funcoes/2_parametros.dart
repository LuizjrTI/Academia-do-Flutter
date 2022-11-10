void main(List<String> args) {
  // Parametros Obrigatorios por default
  print("A soma de 10 + 10 ${somaInteiros(10, 10)}");
  // Parametros Nomeados
  // Parametros nomeados são nullables por default
  // Parametros nomeados podem ser promovidos para non-null com checagem de null

  print("A soma de 10.2 + 10.2 é ${somaDoubles(num1: 10.2, num2: 10.2)}");
  print("A soma de 10.2 + 10.2 é ${somaDoubles(num2: 10.2, num1: 10.2)}");

  print(
      "A soma obrigatoria  de 10.2 + 10.2 é ${somaDoublesObrigatorios(num2: 10.2, num1: 10.2)}");
  print(
      "A soma obrigatoria  de 10.2 + 10.2 é ${somaDoublesObrigatorios2(num1: null, num2: 10.2)}");
  print(
      "A soma obrigatoria  de 10.2 + 10.2 é ${somaDoublesObrigatoriosdefault()}");

  // Parametro opcional
  somaInteirosOpcionais();
  somaInteirosOpcionais(1);
  somaInteirosOpcionais(1, 1);
}

int somaInteiros(int num1, int num2) {
  return num1 + num2;
}

int somaInteirosOpcionais([int num1 = 0, int num2 = 0]) {
  return num1 + num2;
}

double somaDoubles({double? num1, double? num2}) {
  if (num1 != null && num2 != null) {
    return num1 + num2;
  }
  return 0;
}

double somaDoublesObrigatorios({required double num1, required double num2}) {
  return num1 + num2;
}

double somaDoublesObrigatorios2({required double? num1, required double num2}) {
  num1 ??= 0;
  return num1 + num2;
}

double somaDoublesObrigatoriosdefault({double num1 = 0, double num2 = 0}) {
  return num1 + num2;
}

void parametrosNormaisComNomeados(int numero,
    {required String nome, required int idade}) {}
void parametrosNormaisComNomeados2(int numero, [String? nome, int? idade]) {}
