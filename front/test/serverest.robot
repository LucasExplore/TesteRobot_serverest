*** Settings ***
Resource    ../pages/serverest.robot

*** Test Cases ***
Email e/ou senha inválidos
    Dado que acesso a pagina serverest
    E digito o email 
    E digito uma senha
    Clico no botao entrar
    Entao visualizo a mensagem    ${MENSAGEM_SENHA_INVALIDA} 

Email não pode ficar em branco
    Dado que acesso a pagina serverest
    E digito uma senha
    Clico no botao entrar
    Entao visualizo a mensagem    ${MSG_EMAIL_OBRIGATORIO}

Este email já está sendo usado
    Dado que acesso a pagina serverest
    Clico no botao cadastre-se
    E digito o email 
    E digito uma senha
    Clico no botao cadastrar
    Entao visualizo a mensagem    ${MSG_NOME_OBRIGATORIO}
   

