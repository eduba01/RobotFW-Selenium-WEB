*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/base.robot    
Resource    ../pages/HomeInvestPA.robot
Resource    ../pages/LoginPA.robot

*** Keywords ***
Quando faço uma busca pela ação '${acao}' 
  HomeInvestPA.Fazer a busca por pela ação '${acao}'  # Fazer a busca por pela ação "${acao}"

Então vejo a palavra '${nomeAcao}' na pagina
    HomeInvestPA.Verificar se exibe a palavra '${nomeAcao}' na pagina

#HomeInvestPA.Validar a cotação atual da ação  
Então vejo a cotação do ativo
    Validar a cotação atual da ação