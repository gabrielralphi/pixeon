*** Settings ***
Resource        Resource.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Case ***

Caso de teste 01 - Hello
  Dado que estou no site
  Quando eu clicar em Start
  Então aparece a mensagem Hello World