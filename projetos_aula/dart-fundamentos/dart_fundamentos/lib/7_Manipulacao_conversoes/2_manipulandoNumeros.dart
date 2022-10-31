void main(List<String> args) {
  final idade = 30;
  print("Sua idade é $idade");

  if (idade.isNegative) {
    print("O valor passado é negativo");
  }
  final valor = 10.22;

  print(valor.round());
  print(valor.roundToDouble());

  final valorCertoString = '30';
  final valorErradoString = 'Teste';

  final valorInt = int.parse(valorCertoString);
  final valorInt2 = int.tryParse(valorErradoString);

  print(valorInt);
  print(valorInt2);

  if (valorInt2 != null) {
    print('O valor é ${valorInt2 + 2}');
  }

  final precoCamisa = 30.27876;
  print(precoCamisa.toStringAsFixed(2));
}
