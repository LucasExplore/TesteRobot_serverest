*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}    https://front.serverest.dev/login
${BROWSER}    Chrome
${EMAIL_FIELD}    xpath=//input[@data-testid="email"]
${SENHA_FIELD}    id=password

# Botoes
${BTN_ENTRAR}     xpath=//button[@data-testid="entrar"]
${BTN_CADASTRO}   xpath=//a[@data-testid="cadastrar"]
${BTN_CADASTRAR}    xpath=//button[@data-testid="cadastrar"]

# Valores para preencher os campos
${EMAIL}    lucasoliveirabd30@gmail.com
${SENHA}    1234

# Mensagens
${MENSAGEM_SENHA_INVALIDA}    Email e/ou senha inválidos
${MSG_EMAIL_OBRIGATORIO}    Email é obrigatório
${MSG_NOME_OBRIGATORIO}    Nome é obrigatório



*** Keywords ***
Dado que acesso a pagina serverest
    Open Browser    ${URL}    ${BROWSER}
E digito o email 
     Input Text    ${EMAIL_FIELD}    ${EMAIL}    
E digito uma senha    
    Input Text    ${SENHA_FIELD}    ${SENHA}       
Clico no botao entrar 
    Click Button     ${BTN_ENTRAR} 

Clico no botao cadastre-se
    Click Element   ${BTN_CADASTRO}

Clico no botao cadastrar
    Click Button    ${BTN_CADASTRAR}

Entao visualizo a mensagem
    [Arguments]    ${MENSAGEM_ESPERADA}
    Wait Until Page Contains    ${MENSAGEM_ESPERADA}    timeout=5s


