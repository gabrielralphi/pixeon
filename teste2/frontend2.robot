*** Settings ***
Resource        Resource.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Case ***

Caso de teste 01 - Login certo
  Dado que estou no sistema
  Quando eu informo os dados certos
  Então entra no sistema

Caso de teste 02 - usuario errado
  Dado que estou no sistema
  Quando eu informo o usuario errado
  Então aparece a mensagem de usuário inválido

Caso de teste 03 - senha errado
  Dado que estou no sistema
  Quando eu informo a senha errada
  Então aparece a mensagem de senha inválida