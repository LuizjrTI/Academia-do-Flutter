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
```
  
