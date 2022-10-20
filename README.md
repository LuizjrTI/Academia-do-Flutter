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
* Meio mais facil de trocar de versões de JDK
```shell
New-Item -ItemType SymbolicLink -Path "C:\DevPrograms\Java\current" -Target "C:\DevPrograms\Java\jdk11"
```
