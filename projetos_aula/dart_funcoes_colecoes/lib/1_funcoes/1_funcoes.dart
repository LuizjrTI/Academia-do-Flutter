void main(List<String> args) {
  final valorCalculado = soma(10, 10);
  print("A soma de dois inteiros é $valorCalculado");
}

int soma(int num1, int num2) {
  print("Executando a soma de dois inteiros ${num1 + num2}");
  return num1 + num2;
}
