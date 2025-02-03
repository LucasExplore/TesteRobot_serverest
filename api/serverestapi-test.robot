*** Settings ***
Resource        serverest-api-resource.robot

Suite Setup     Conectar a minha API

*** Test Case ***
Buscar a listagem de todos os usuarios
    Requisitar todos os usuarios
    Conferir status code    200

Buscar a listagem de todos os produtos
    Requisitar todos os produtos
    Conferir status code    200

Listar carrinho 
    Listar carrinho 
    Conferir status code    200


*** Keywords ***
Requisitar todos os usuarios
    ${response}         Get On Session     serverestapi     usuarios
    Log                 ${response}
    Set Test Variable   ${response}

Conferir status code
    [Arguments]     ${STATUS_CODE}
    Should Be Equal As Strings      ${response.status_code}     ${STATUS_CODE}

Requisitar todos os produtos
    ${response}         Get On Session     serverestapi     produtos
    Log                 ${response}
    Set Test Variable   ${response}

Listar carrinho 
    ${response}         Get On Session     serverestapi     carrinhos
    Log                 ${response}
    Set Test Variable   ${response}