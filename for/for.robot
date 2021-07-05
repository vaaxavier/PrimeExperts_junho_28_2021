*** Settings ***
Documentation     testando lacos(for) com robot
Library     Collections

*** Test Cases ***
Contando ate 9
    Teste    1    9

*** Keywords ***
Teste
    [Arguments]   ${num_inicial}    ${num_final}
    FOR    ${count}    IN RANGE    ${num_inicial}    ${num_final}
        Log To Console    ${\n}Estou no numero ${count}
    END