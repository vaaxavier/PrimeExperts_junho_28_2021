*** Settings ****
Documentation     testando lacos(IF) com robot
Library    Collections

*** Test Cases ***
Jogo do adivinha 
    Eu tenho o numero    10

*** Keywords ***
Eu tenho o numero 
    [Arguments]    ${possuo_o_numero}
    Ganhei o jogo "${possuo_o_numero}"

Ganhei o jogo "${numero_recebido}"
    ${mensagem_vencedora}    Set Variable    voce ganhou o jogo
    IF    ${numero_recebido} == ${5}
        Log To Console    ${mensagem_vencedora}
    ELSE IF    ${numero_recebido} == ${8} 
        Log To Console    ${mensagem_vencedora}
    ELSE
        Log To Console    Voce perdeu!        
    END