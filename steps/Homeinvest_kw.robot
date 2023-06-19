*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/base.robot    
#Resource    ../features/HomeInvest.robot
Resource    ../pages/HomeInvest_PA.robot
Resource    ../pages/Login_PA.robot

*** Keywords ***

Quando faço uma busca pela ação '${acao}'  
    HomeInvest_PA.Fazer a busca por pela ação '${acao}'  # Fazer a busca por pela ação "${acao}"

E faço uma busca pela ação '${acao}' 
    HomeInvest_PA.Fazer a busca por pela ação '${acao}'  # Fazer a busca por pela ação "${acao}"
  
Então vejo a palavra '${nomeAcao}' na pagina
    HomeInvest_PA.Verificar se exibe a palavra '${nomeAcao}' na pagina

Então vejo a cotação do ativo '${nomeAcao}'  
    HomeInvest_PA.Retorna a cotacao do ativo

Então vejo a cotação esta acima da media  
    HomeInvest_PA.Validar se a ação esta acima da media 
