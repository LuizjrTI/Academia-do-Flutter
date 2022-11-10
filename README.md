# Academia-do-Flutter

## Configuração de Ambiente Windows

* [Chocolatey](https://chocolatey.org/install)

* Usando Terminal do Power shell insira o comando:

```shell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

* Para executar o comando acima necessita perfil de administrador da máquina.

* Após a instalação use o comando para verificar a versão:

```shell
choco
```

* Use o comando para instalar o git

```shell
choco install git
```

* Instalar jdk 8 e 11

**Sugestão de caminho de instalação:**  **c:\DevPrograms\java**

* Configurar as variaveis de ambiente do Java

* JAVA_HOME **C:\DevPrograms\Java\jdk11**

* Meio mais facil de trocar de versões de JDK

```shell
New-Item -ItemType SymbolicLink -Path "C:\DevPrograms\Java\current" -Target "C:\DevPrograms\Java\jdk11"
```

* Para trocar a versão use:

```shell
New-Item -ItemType SymbolicLink -Path "C:\DevPrograms\Java\current" -Target "C:\DevPrograms\Java\jdk8" -Force
```

* Instalação do android Studio

* Configurar as variaveis de ambiente

* ANDROID_HOME **C:\Users\luizs.araujo\AppData\Local\Android\Sdk**

* ANDROID_SKD_ROOT **C:\Users\luizs.araujo\AppData\Local\Android\Sdk**

* Use o comando para verificar se tudo está corretamente instalado:

```shell
adb
```

* [FVM](https://fvm.app/) (Flutter Version Management)

* [Flutter](https://flutter.dev/) Site oficial do flutter

* Para a instalação siga os passos do **get started**

```shell
flutter --version
```

Verifica se seu ambiente está tudo **OK!!!**

```shell
flutter doctor
```

* Configurando o FVM

* Use o comando abaixo para instalar o fvm

```shell
choco install fvm
```

* Use o comando abaixo para verificar as versões existentes do flutter

```shell
fvm releases
```

* Use o comando abaixo para instalar o flutter

```shell
fvm global stable
```

* Use o comando abaixo para instalar uma versão especifica

```shell
fvm global 3.0.1
```

* Instalando visual studio code
  * [VSCODE](https://code.visualstudio.com/)
  * Baixar as Extensões Flutter e Dart

## Dart Fundamentos

* [DartPad](https://dartpad.dev/) IDE online de dart

* Conceitos importantes do dart
  * Tudo dentro do dart é um objeto.

* Criando o primeiro projeto via terminal
  * ```fvm dart create -t console-full dart_fundamentos```

* Estrutura de projetos Dart
  * bin -> contem os arquivos de start da aplicação.
  * lib -> Onde fica os nossos arquivos
  * test -> Ficam os arquivos de testes
  * analysis_options.yaml -> Configura o lint, os padrões de projeto.

### Variáveis

* Exemplos de variaveis no dart

```dart
void main() {
  // inteiros 1,2,3
  // decimais 1.2 , 1.3
  // num é o pai de todos
  num qualquerNumero = 1;
  num qualquerNumero2 = 2.1;
  int idade = 10;
  var idade2 = 11;
  const palavra = "palavra";
  double valor = 12.00;
  String nomeCurso = "Academia do flutter";
  Object objetoQualquer = 1.2;
  dynamic dynamicQualquer = 1;
  dynamicQualquer = "Luiz";
  dynamicQualquer = 1.2;
}
```

* Uso do Null safety em flutter

```dart
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
  // Se for atribuido um valor a ela, automaticamente elas são
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
```

### Modificadores

* **Final** e **Const**

```dart
void main(List<String> args) {
  var nomeCompleto = 'Luiz';
  print(nomeCompleto);
  nomeCompleto = 'luiz jr';
  print(nomeCompleto);

  // Variaveis Finais
  // Não podem ser alteradas depois de inicializadas (Imutáveis)
  // São definidas no programa em tempo de execução(RunTime)
  // utilize sem moderação
  final nomeCompletoFinal = "teste final";
  final nomeCompletoFinal2 = nomeCompleto;

  //const
  // Não podem ser alteradas depois de inicializadas (Imutáveis)
  // São definidas no programa em tempo de compilação!!!
  // Não podem receber valores de outras váriaveis a não ser que essas variaves forem const tambem
  // utilize sem moderação
  const nomeCompletoConst = "teste const";
  //const nomeCompletoConst2 = nomeCompleto;
}
```

### Condicionais e operadores relacionais

* Operadores condicionais (**IF**,**ELSE**, **ELSE IF**)
* Operadores relacionais (**==**, **!=**, **>**,**<**,**>=**,**<=**)
* Operadores logicos ( **&&**, **||**, **!**)

```dart
void main(List<String> args) {
  int idade = 21;

  if (idade >= 18) {
    print("Tem idade para tirar a habilitação");
  }
}
```

```dart
void main(List<String> args) {
  // Operadores relacionais
  // Temos 6 tipos
  // == (Igualdade)
  // != (Diferente)
  // > (Maior que)
  // < (Menor que)
  // >= (Maior ou igual)
  // <= (Menor ou igual)

  final idade = 18;
  final tipoPet = 'Gato';

  if (idade == 18) {
    print("Pode tirar habilitação");
  } else if (idade > 18) {
    print("Pode tirar habilitação");
  } else {
    print("Não pode tirar habilitação");
  }

  if (tipoPet != 'Cachorro') {
    print("Desculpe mas não temos nada para seu pet");
  }
}
```

```dart
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
```

* Operadores Ternarios
* Use com atenção, caso tenha que comentar escreva outro codigo mais simples.

```dart
void main(List<String> args) {
  final idade = 12;

  if (idade >= 18) {
    print("Maior de idade");
  } else {
    print("Menor de idade");
  }

  // condicao ? faca algo : outra coisa
  final eMaiorDeIdade = idade >= 18 ? true : false;
  print("É maior de idade? " + eMaiorDeIdade.toString());
}
```

* Switch

```dart
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
```

### Tratamento de Nulos

* Null Safety
* Null Aware Operator
* Conditional property access

* Exemplo de Null Safety

```dart
String? nomeSuperior;

void main(List<String> args) {
  String nome = '';

  String? nomeNula;

  if (nomeNula != null) {
    nomeNula.isEmpty;
  }

  nome.isEmpty;
  var nomeLocal = nomeSuperior;
  if (nomeLocal != null) {
    nomeLocal.isEmpty;
  }

  nomeSuperior = '';
  nomeSuperior!.isEmpty;
}
```

* Exemplo Null Aware Operator

```dart
String? nome;
void main(List<String> args) {
  var sobrenome = 'Jr';
  var nomeCompleto = (nome ?? 'Rodrigo') + sobrenome;

  print(nomeCompleto);
}
```

* Exemplo de Conditional Property Access

```dart
String? nomeCompleto;

void main(List<String> args) {
  // Null Aware operator
  // var nomeCompletoLocal = nomeCompleto ?? 'Nome não preenchido';
  // IF convencional
  if (nomeCompleto != null) {
    print(nomeCompleto!.toUpperCase());
  }
  // Conditional Property Access
  print(nomeCompleto?.toUpperCase() ?? 'Nome não preenchido');
}
```

### Listas

```dart
void main(List<String> args) {
  // Declaração Normal
  List<int> listNumeros = [1, 2, 3];
  var listNumeros2 = [1, 2, 3];
  List<int> listSemDados = [];
  var listSemDados2 = <int>[];
}
```

```dart
void main(List<String> args) {
  // ? = Nullable (Aceita Nulo)
  // Sem nada (padrão) = non-null (Não aceita nulo)

  // Não pode ser nulo
  var nomes = [];
  //Aceita Nulo
  List<String>? nomesNulos;

  // Lista não pode ser nula e nem os itens
  List<String> nomesInternosNaoAceitaNulos = ['Rodrigo'];
  // Lista não pode ser nula mas os itens internos podem ser nulos
  List<String?> nomesInternosAceitaNulos = ['Rodrigo', null, 'luiz'];
  // Lista pode ser nula e os itens tambem podem ser nulos
  List<String?>? nomesInternosAceitaNulos1 = null;
}
```

```dart
void main(List<String> args) {
  final numeros = [1, 2, 3, 4];
  print(numeros);
  numeros.add(1);
  print(numeros);
//                   0         1       2
  final nomes = ['Rodrigo', 'joão', 'Maria'];
  print(nomes);
  nomes.add('Luiz');
  print(nomes);
  print(nomes[3]);
  // Inserir em uma posição especifica
  nomes.insert(0, "danny");
  print(nomes);
  print(nomes[0]);

  nomes.addAll(['T4kuma', 'Teste', 'Flutter']);
  print(nomes);

  nomes.remove('T4kuma');
  print(nomes);

  nomes.removeWhere((nomes) {
    print("Nome Procurado $nomes");
    if (nomes == 'danny') {
      return true;
    } else {
      return false;
    }
  });
  print(nomes);
  //Printar o primeiro elemento
  print(nomes[0]);
  print(nomes.first);
  //Printar o ultimo elemento
  print(nomes[nomes.length - 1]);
  print(nomes.last);

  final numerosGerados = List.generate(10, (index) => index + 1);
  print(numerosGerados);

  final stringGerados = List.generate(10, (index) => "# ${index + 1}");
  print(stringGerados);

  final repeticoes = List.filled(10, "Brazil");
  print(repeticoes);

  final numerosGerados2 = List.generate(100, (index) => index + 1);
  var somaTotal = numerosGerados2.fold<int>(
      0, (previousValue, numero) => previousValue = previousValue + numero);

  print(somaTotal);

  // Spread operator (...)
  var listaNumerosSpread = [1, 2, 3];
  var listaNumerosSpreadB = [...listaNumerosSpread, 4, 5, 6];

  print(listaNumerosSpreadB);

// collection if

  var promocaoAtiva = true;
  var produtos = [
    "cerveja",
    "refrigerante",
    if (promocaoAtiva) 'Suco de laranja'
  ];

  print(produtos);

  // collection for
  var listaInts = [1, 2, 3];
  var listaStrings = ['#0', for (var i in listaInts) '#$i'];

  print(listaStrings);
}
```

### Loops

* **FOR** e **FOR IN**

```dart
void main(List<String> args) {
  var numeros = List.generate(10, ((index) => index));
  var nomes = ['Rodrigo', 'Luiz', 'Gustavo', 'Teste'];

  // for mais simples
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  // for mais bem implementado
  for (var nome in nomes) {
    print(nome);
  }

  for (var numero in numeros) {
    print(numero);
  }

  // for com break
  for (var i = 0; i < nomes.length; i++) {
    if (nomes[i] == 'Luiz') {
      break;
    }
    print(nomes[i]);
  }

  for (var nome in nomes) {
    if (nome == 'Luiz') {
      break;
    }
    print(nome);
  }

  // for com continue
  for (var i = 0; i < nomes.length; i++) {
    if (nomes[i] == 'Luiz') {
      continue;
    }
    print(nomes[i]);
  }

  for (var nome in nomes) {
    if (nome == 'Luiz') {
      continue;
    }
    print(nome);
  }
}
```

* **Do While** e **While**

```dart
void main(List<String> args) {
  //      inicio     condição       incremento
  // for(var i = 0; i <nomes.length; i++)

  var numero = 0;
  print("While Convencional");

  while (numero <= 10) {
    print(numero);
    numero++;
  }

  // DoWhile
  var indice = 0;
  while (indice > 0) {
    print(indice);
    indice++;
  }

  do {
    print(indice);
    //indice++;
  } while (indice > 0);
}
```

* **Iterables**

```dart
void main(List<String> args) {
  var numeros = List.generate(10, ((index) => index));
  numeros.where((numero) => numero != 5).forEach((numero) => print(numero));
  final numerosAte6 = numeros
      .takeWhile((numero) => numero < 7)
      .where((numero) => numero != 5)
      .toList();
  print(numerosAte6);

  final numerosRemoverAte5 = numeros.skipWhile((numero) => numero < 6).toList();
  print(numerosRemoverAte5);

  var nomes = ['Rodrigo', 'Guilherme', 'Arthur', 'Sandra', 'Marcos'];
  var nomesSkip = nomes.skipWhile((nome) {
    if (nome == 'Arthur') {
      return true;
    } else {
      return false;
    }
  }).toList();
  print(nomesSkip);

  var numeroStrList = numeros.map((numero) {
    return 'numero é $numero';
  }).toList();
  print(numeroStrList);
}
```

### Manipulação e conversão de Strings

* Utilização de alguns metodos de **STRING** para ajustes e modificações.
* Ex:
  * **split**
  * **toLowerCase**
  * **toUpperCase**
  * **substring**

```dart
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
```

### Manipulação e conversão de Numericos

* Utilização de alguns metodos de **Numeros** para ajustes e modificações.
* EX:
  * round
  * roundToDouble
  * parse
  * tryParse
  * toStringAsFixed

```dart
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
```

### Funções

```dart
void main(List<String> args) {
  final valorCalculado = soma(10, 10);
  print("A soma de dois inteiros é $valorCalculado");
}

int soma(int num1, int num2) {
  print("Executando a soma de dois inteiros ${num1 + num2}");
  return num1 + num2;
}
```

### Parametros

```dart
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
```

### Funções Arrow, Funções Anonimas e Typedef

```dart
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

```

### Listas parte2

```dart
void main(List<String> args) {
  var numeros = List.generate(10, ((index) => index + 1));

  numeros.forEach(print);

  //Expand
  // Array Bidimencioanl
  var lista = [
    [1, 2],
    [3, 4],
  ];
  print(lista);

  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  // any
  final listaBusca = ['Luiz', 'Rodrigo', 'Joao'];

  if (listaBusca.any((element) => element == 'Joao')) {
    print("Joao está na lista");
  } else {
    print('Joao não está na lista');
  }

  //every
  final listaBusca2 = ['Luiz', 'Rodrigo', 'Joao'];
  if (listaBusca2.every((element) => element.contains("J"))) {
    print("Todos os nomes tem a letra J");
  } else {
    print("Nem todos os nomes tem a letra J");
  }

  //Sort
  final listaParaOrdenacao = [99, 22, 10, 765, 1, 2, 3, 100, 300, 1000];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  final listaParaOrdenacao2 = ['Luiz', 'Rodrigo', 'Joao'];
  listaParaOrdenacao2.sort();
  print(listaParaOrdenacao2);

  final pacientes = [
    'Luiz Jr | 27',
    'Suzana | 35',
    'Testes | 10',
    'Bolsonaro | 1000'
  ];
  pacientes.sort();
  //print(pacientes);

  pacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split("|");
    final pacienteDados2 = paciente2.split("|");

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(pacientes);

  //compare to

  final pacientes2 = [
    'Luiz Jr | 27',
    'Suzana | 35',
    'Testes | 10',
    'Bolsonaro | 1000'
  ];
  pacientes2.sort();
  //print(pacientes2);

  pacientes2.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split("|");
    final pacienteDados2 = paciente2.split("|");

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(pacientes2);
}
```
