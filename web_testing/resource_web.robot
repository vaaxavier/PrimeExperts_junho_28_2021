*** Settings ***
Documentation    arquivo responsavel pelas importacoes, variaveis e KeyWords
Library          SeleniumLibrary
Library          String

*** Variables ***
${URL}                           http://automationpractice.com
${MENSAGEM_ALERTA}               No results were found for your search "itemNãoExistente"
${Categoria_Women}               Women
@{Produtos_Sub_Categorias}       Printed Summer Dress    Printed Summer Dress    Printed Chiffon Dress
&{PESSOA}              nome=Valeria    sobrenome=Xavier    pwd=123456
...                    endereco=Rua Prime, Bairro Expert    cidade=Teste
...                    id_estado=9  cep=12345  telefone=12345678

*** Keywords ***
## ----- suite setup
Abrir o navegador
    Open Browser    browser=Chrome

Fechar o navegador
    Close Browser


## --- acoes
Acessar a página home do site Automation Practice
    Go To    ${URL}

Digitar o nome do produto "${produto}" no campo de pesquisa
    Wait Until Element Is Visible       id:search_query_top
    Input Text    id:search_query_top    ${produto}

Clicar no botão pesquisar
    Click Button     name:submit_search

Conferir se o produto "${produto}" foi listado no site
    Wait Until Element Is Visible    //h5[@itemprop='name'][contains(.,'Blouse')]
    Element Text Should Be           //h5[@itemprop='name'][contains(.,'Blouse')]    ${produto}

Conferir Mensagem De Erro "${MENSAGEM_ALERTA}"
    Wait Until Element Is Visible   //*[@id="center_column"]/p[@class='alert alert-warning']
    Element Should Be Visible       //*[@id="center_column"]/p[@class='alert alert-warning']    ${MENSAGEM_ALERTA}

Passar o mouse por cima da categoria ${Categoria_Women} no menu principal superior de categorias
    Wait Until Element Is Visible   xpath=//*[@id="block_top_menu"]//a[@title="${Categoria_Women}"]
    Mouse Over                      xpath=//*[@id="block_top_menu"]//a[@title="${Categoria_Women}"]

Clicar na sub categoria "${sub_categoria}"
    Wait Until Element Is Visible   xpath=//*[@id="block_top_menu"]//a[@title="${sub_categoria}"]
    Click Element                   xpath=//*[@id="block_top_menu"]//a[@title="${sub_categoria}"]

Conferir se os produtos da sub-categoria "${sub_categoria}" foram mostrados na página
    Page Should Contain Element    xpath=//*[@id="center_column"]/h1/span[contains(text(),"${sub_categoria}")]
    Page Should Contain Element    xpath=//*[@id="center_column"]/ul/li[1]/div/div[2]/h5/a[@title="${Produtos_Sub_Categorias[0]}"]
    Page Should Contain Element    xpath=//*[@id="center_column"]/ul/li[2]/div/div[2]/h5/a[@title="${Produtos_Sub_Categorias[1]}"]
    Page Should Contain Element    xpath=//*[@id="center_column"]/ul/li[3]/div/div[2]/h5/a[@title="${Produtos_Sub_Categorias[2]}"]

Clicar em "Sign in"
    Click Element                  xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a
    
Informar um e-mail válido
    Wait Until Element Is Visible   id=email_create
    
    
    ${EMAIL}                        Generate Random String
    Input Text                      id=email_create    ${EMAIL}@robotframework.com

Clicar em "Create an account"
    Click Button                    id=SubmitCreate

Preencher os dados obrigatórios
    Wait Until Element Is Visible   xpath=//*[@id="account-creation_form"]//h3[contains(text(),"Your personal information")]
    Click Element                   id=id_gender2
    Input Text                      id=customer_firstname    ${PESSOA.nome}
    Input Text                      id=customer_lastname     ${PESSOA.sobrenome}
    Input Text                      id=passwd                ${PESSOA.pwd}
    Input Text                      id=address1              ${PESSOA.endereco}
    Input Text                      id=city                  ${PESSOA.cidade}
    Set Focus To Element            id=id_state
    Select From List By Index       id=id_state              ${PESSOA.id_estado}
    Input Text                      id=postcode              ${PESSOA.cep}
    Input Text                      id=phone_mobile          ${PESSOA.telefone}
    
Submeter cadastro
    Click Button                    submitAccount

Conferir se o cadastro foi efetuado com sucesso
     Wait Until Element Is Visible    xpath=//*[@id="center_column"]/p
    Element Text Should Be           xpath=//*[@id="center_column"]/p
    ...    Welcome to your account. Here you can manage all of your personal information and orders.
    Element Text Should Be           xpath=//*[@id="header"]/div[2]//div[1]/a/span    ${PESSOA.nome} ${PESSOA.sobrenome}