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

*  Para a instalação siga os passos do **get started**

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

## Tratamento de Nulos

* Null Safety
* Null Aware Operator
* Conditional property access

- Exemplo de Null Safety
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
- Exemplo Null Aware Operator
```dart
String? nome;
void main(List<String> args) {
  var sobrenome = 'Jr';
  var nomeCompleto = (nome ?? 'Rodrigo') + sobrenome;

  print(nomeCompleto);
}
```
- Exemplo de Conditional Property Access
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


