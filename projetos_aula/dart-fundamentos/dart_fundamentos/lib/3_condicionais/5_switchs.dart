void main(List<String> args) {
  final diaDaSemana = 0;

  var diaDaSemanaStr = '';

  switch (diaDaSemana) {
    case 0:
      diaDaSemanaStr = "Domingo";
      break;
    case 1:
      diaDaSemanaStr = "Segunda - feira";
      break;
    case 2:
      diaDaSemanaStr = "Terça - feira";
      break;
    default:
      diaDaSemanaStr = "Não identificado";
      break;
  }

  print(diaDaSemanaStr);
}
