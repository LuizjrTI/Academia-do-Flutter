# Academia-do-Flutter

## Configuração de Ambiente Windows

* [Chocolatey](https://chocolatey.org/install)

* Usando Terminal do Power shell insira o comando:

```shell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

* Use o comando ```choco``` para verificar a verão