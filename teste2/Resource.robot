*** Settings ***
Library      SeleniumLibrary
Library      String


*** Variables ***
${BROWSER}    chrome
${URL}        https://the-internet.herokuapp.com/login

*** Keywords ***

Abrir navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser


#### Passo a Passo

#Ações globais

Dado que estou no sistema
    #Abrindo o site
    Title Should Be     The Internet

Quando eu informo os dados certos
    #Login
    Wait Until Element Is Visible           xpath=//*[@id="content"]/div/h2
    Input Text                              xpath=//*[@id="username"]  tomsmith
    Input Password                          xpath=//*[@id="password"]  SuperSecretPassword!
    Sleep                                   1
    Click Element                           xpath=//*[@id="login"]/button
    
Então entra no sistema
    Sleep  2
    Wait Until Page Contains Element        xpath=//div/h2[contains(text(),"Secure Area")]

#CONFERÊNCIA
#Caso de teste 01

Log1
    Log                                     Apareceu a mensagem "You logged into a secure area!"

################################################################################

Quando eu informo o usuario errado
    #Login
    Wait Until Element Is Visible           xpath=//*[@id="content"]/div/h2
    Input Text                              xpath=//*[@id="username"]  teste
    Input Password                          xpath=//*[@id="password"]  123456
    Sleep                                   1
    Click Element                           xpath=//*[@id="login"]/button
    
Então aparece a mensagem de usuário inválido
    Sleep  2
    Wait Until Page Contains Element        xpath=//*[@id="flash"][contains(text(),"Your username is invalid!")]

#CONFERÊNCIA
#Caso de teste 01

Log2
    Log                                     Apareceu a mensagem "Your username is invalid!"

################################################################################

Quando eu informo a senha errada
    #Login
    Wait Until Element Is Visible           xpath=//*[@id="content"]/div/h2
    Input Text                              xpath=//*[@id="username"]  tomsmith
    Input Password                          xpath=//*[@id="password"]  123456
    Sleep                                   1
    Click Element                           xpath=//*[@id="login"]/button
    
Então aparece a mensagem de senha inválida
    Sleep  2
    Wait Until Page Contains Element        xpath=//*[@id="flash"][contains(text(),"Your password is invalid!")]

#CONFERÊNCIA
#Caso de teste 01

Log3
    Log                                     Apareceu a mensagem "Your password is invalid!"