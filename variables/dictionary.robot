*** Settings ***
Documentation    Meu teste de dicionário

*** Variables ***
${MPB}             Marisa Monte
${Sertanejo}       Chitãozinho e Xororó
${POP}             Britney Spears
${Rock}            Guns N' Roses
${Indie}           Lana Del Rey
${NewAge}          Enya
${Flashback}       Todos

*** Test Cases ***
Meu teste de gosto musical MPB:
    Informar cantor preferido de MPB:

Meu teste de gosto musical Sertanejo:
    Informa cantor preferido de Sertanejo:

Meu teste de gosto musical POP:
    Informar cantor preferido de POP:

Meu teste de gosto musical Rock:
    Informar cantor preferido de Rock:

Meu teste de gosto musical Indie:
    Informar cantor preferido de Indie:

Meu teste de gosto musical NewAge:
    Informar cantor preferido de NewAge:

Meu teste de gosto musical Flashback:
    Informar cantor preferido de Flashback:

*** Keywords ***
Informar cantor preferido de MPB:
    Log To Console  ${MPB}   

Informa cantor preferido de Sertanejo:
    Log To Console  ${Sertanejo}

Informar cantor preferido de POP:
    Log to Console  ${POP}

Informar cantor preferido de Rock:
    Log to console  ${Rock}  

Informar cantor preferido de Indie:
    Log to console  ${Indie}

Informar cantor preferido de New Age:
    Log to console  ${NewAge}

Informar cantor preferido de Flashback: 
    Log to console  ${Flashback} 