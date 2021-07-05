*** Settings ***
Documentation     arquivo responsavel pelos testes de mobile testing App: Youtube
Resource          ./resource_mobile.robot

*** Test Cases ***

Pesquisar canal "Adrenaline"

*** Keywords ***
Teste
    [Arguments]   ${num_inicial}    ${num_final}
    FOR    ${count}    IN RANGE    ${num_inicial}    ${num_final}
        Log To Console    ${\n}Estou no numero ${count}
    END