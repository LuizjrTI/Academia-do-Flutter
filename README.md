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
**Sugestão de caminho de instalação:** **c:\DevPrograms\java**
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
* Instalação do android stuido
* Configurar as variaveis de ambiente
  * ANDROID_HOME **C:\Users\luizs.araujo\AppData\Local\Android\Sdk**
  * ANDROID_SKD_ROOT **C:\Users\luizs.araujo\AppData\Local\Android\Sdk**
* Use o comando: ```cmd adb``` para verificar se tudo está corretamente instalado.
