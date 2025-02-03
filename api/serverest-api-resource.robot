*** Settings ***
Library         RequestsLibrary
Library         Collections

*** Variable ***
${URL_API}      https://serverest.dev/


*** Keywords ***
Conectar a minha API
    Create Session      serverestapi     ${URL_API}
    ${HEADERS}      Create Dictionary      content-type=application/json 
    Set Suite Variable    ${HEADERS}
