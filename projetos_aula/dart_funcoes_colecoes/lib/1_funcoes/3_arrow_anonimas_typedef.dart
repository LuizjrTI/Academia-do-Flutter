void main(List<String> args) {
  // funções arrow
  print(somaInteiros2(10, 10));

  // funçoes anonimas
  () {
    print("funções Anonimas");
  }(); //execucão

  var funcaoQualquer = () {
    print("Função Qualquer");
  }; //Closure;
  print(funcaoQualquer);
  print(funcaoQualquer());

  chamarUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty) {
      print('Nome veio vazio');
    } else {
      print(nome);
    }
  });
}

// 3 Partes
// 1 tipo de retorno
// 2 Nome
// 3 Parametros (normais, nomeados e opcionais)
int somaInteiros(int num1, int num2) {
  return num1 + num2;
}

int somaInteiros2(int num1, int num2) => num1 + num2;

void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeNome) {
  var calc = 1 + 1;
  var nomeTeste = 'Luiz Jr';
  funcaoQueRecebeNome(nomeTeste);
}

typedef funcaoQueRecebeNome = void Function(String nome);

void chamarUmaFuncaoDeUmParametro2(funcaoQueRecebeNome funcaoQueRecebeNome) {
  var calc = 1 + 1;
  var nomeTeste = 'Luiz Jr';
  funcaoQueRecebeNome(nomeTeste);
}
