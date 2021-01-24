*** Settings ***
Library      SeleniumLibrary
Library      String


*** Variables ***
${BROWSER}    chrome
${URL}         https://the-internet.herokuapp.com/dynamic_loading/1

*** Keywords ***

Abrir navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser


#### Passo a Passo

#Ações globais

Dado que estou no site
    #Abrindo o site
    Title Should Be     The Internet

Quando eu clicar em Start
    #Login
    Click Element                           xpath=//button[contains(text(),"Start")]
    
Então aparece a mensagem Hello World
    Wait Until Page Contains Element        xpath=//div[@id="finish"]/h4

#CONFERÊNCIA
#Caso de teste 01

Log
    Log                                     Apareceu a mensagem Hello World com sucesso!!!  

################################################################################
