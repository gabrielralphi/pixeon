# Análise Técnica  Pixeon

## 1. Cenários de Testes
No arquivo 'casos_teste_pixeon.txt' contém alguns cenários de teste em BDD para analisar a escrita.

## 2. Automação de front-end

### Para rodar os cenários de teste informados nos arquivos 'Teste1' e 'Teste2' é preciso seguir as orientações abaixo.

*Foi utilizado RobotFramework na linguagem Python na IDE Visual Studio Code*

**- Instalar Python 3**
.Conferir nas Variáveis de Ambiente do WINDOWS se na variável PATH foi criado corretamente os caminhos do Python3. Não esquecer de inserir o caminho do Script do Python.

**- Instalar Robot e Libraries**
.Abrir o CMD como Administrador e fazer os seguintes comandos:
.Instalação do Robot Framework:
pip install robotframework

.Instalação do Selenium Librarie:
pip install -U robotframework-seleniumlibrary

.Instalação do HTTP library (Requests):
pip install -U robotframework-requests

**- Instalar webDrivers**

.Firefox
https://github.com/mozilla/geckodriver/releases
Fazer download da última versão

.Chrome
https://chromedriver.chromium.org/downloads
Fazer download da última versão

Descompactar os drivers na pasta
C:\Users\%USERPROFILE%\AppData\Local\Programs\Python\pYTHON39\Scripts

**- Configurar VS Code**

.Extensões:
1) Robot Framework Intellisense by Tomi Turtiainen
2) RobotF Extension by KMK Labs

.Workspace (Configuração do auto-preenchimento)
Salvando a pasta raiz do seu projeto como um Workspace
Com a pasta do projeto aberta no VS code, vá até File > Save Workspace as...
Vai aparecer uma caixa de dialogo do Windows,  dê um nome para seu workspace e clique em 'Save'.
Um arquivo .code-workspace vai ser criado na raiz do seu projeto.
Adicione a seguinte lista dentro do objeto settings do seu arquivo .code-workspace:

"rfLanguageServer.libraries": [
   "BuiltIn-3.1.1",
   "Collections-3.1.1",
   "DateTime-3.1.1",
   "Dialogs-3.1.1",
   "OperatingSystem-3.1.1",
   "Process-3.1.1",
   "Screenshot-3.1.1",
   "SeleniumLibrary-3.3.1",
   "Telnet-3.1.1",
   "XML-3.1.1"
  ]

**- Execução**
Abrir terminal no VSCode
robot -d .\results frontend1.robot - Teste1
robot -d .\results frontend2.robot - Teste2
(utilizando o -d .\pasta ele armazena os logs de saida nessa pasta, pra não poluir a raiz do projeto.)

##3. Automação de Back-End

- Não tenho experiência na criação de cenários de automação para o back-end, mas tenho muita facilidade em aprender.
O que trabalhei foi mais para consultar se os métodos REQUEST estavam funcionando.

GET, POST, PUT e DELETE

Ja utilizei as IDEs INSOMNIA e POSTMAN.

