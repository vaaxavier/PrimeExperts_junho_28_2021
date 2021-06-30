*** Settings ****
Documentation     Meu teste de variáveis 

*** Variables ***
${MENSAGEM}    Hello World 

*** Test Cases ***
Meu teste de impressão de mensagem no terminal 
    Logar no terminal uma mensagem

*** Keywords ***

Logar no terminal uma mensagem
    Log To Console    ${MENSAGEM}
    