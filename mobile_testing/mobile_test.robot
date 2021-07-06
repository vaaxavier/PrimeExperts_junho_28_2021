*** Settings ***
Documentation    arquivo responsavel pelas variaveis, KW e variaveis do proveto mobile testing
Resource         resource_mobile.robot
Suite Setup      Abrir o aplicativo no celular

*** Test Cases ***
Pesquisar canal “Adrenaline”
    Buscar o canal “Adrenaline"
    Selecionar o canal na lista de busca
    Navegar pelo menu Playlist
    Selecionar a playlist da E3 do canal
    Navegar por todos os botões da barra de Menus(Home, Explorar...) do YouTube