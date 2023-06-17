*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Resource    ../resources/base.robot
Resource    ../pages/HomeInvestPA.robot

*** Keywords ***
Fazer a busca por pela ação "${acao}"
    Click Element             //i[contains(.,'search')]
    Input Text                //input[contains(@class,'Typeahead-input input tt-input')]    ${acao}
    Click Element             //span[@title='Nome da empresa/FII']
    Verificar se exibe a palavra "${acao}" na pagina

Validar a cotação atual da ação
    ${cotacao}=    Get Text    (//strong[contains(@class,'value')])[1]
    Log    ------------ COTACAO DA ACAO ${cotacao}

   # ${cotacao} >= "40,00"