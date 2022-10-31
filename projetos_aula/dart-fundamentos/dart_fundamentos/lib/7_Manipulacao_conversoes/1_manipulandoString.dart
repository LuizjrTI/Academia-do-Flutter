void main(List<String> args) {
  final nome = 'Luiz Jr';
  final subStringNome = nome.substring(3);
  print(subStringNome);
  final subStringNome2 = nome.substring(0, 4);
  print(subStringNome2);

  var sexo = 'Masculino';
  var sexoSigla = sexo.substring(0, 1);
  print(sexo);
  if (sexoSigla == 'M') {
    print("Olá seu sexo é Masculino");
  }

  if (sexo.toLowerCase().startsWith("mas")) {
    print("Olá seu sexo é Masculino");
  }
  if (sexo.toUpperCase().startsWith("MAS")) {
    print("Olá seu sexo é Masculino");
  }
  if (nome.toLowerCase().contains('jr')) {
    print('É da familia jr');
  }

  // Interpolação
  var primeiroNome = 'luiz';
  var ultimoNome = 'Jr';

  print("Seja Bem-vindo $primeiroNome $ultimoNome");
  print('Seja Bem-Vindo ${primeiroNome.toUpperCase()}');

  var paciente = 'Luiz Jr|27|Analista|RJ';
  var dadospaciente = paciente.split('|');
  print(dadospaciente[0]);

  var pacientes = ['Luiz Jr|27|Analista|RJ', 'Danny Nunes|26|Analista|DF'];

  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    var nomeCompleto = dadosPaciente[0];
    var nomes = nomeCompleto.split(' ');
    print(nomes.last);
  }
}
