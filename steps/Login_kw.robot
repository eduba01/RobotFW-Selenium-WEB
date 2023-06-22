*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/base.robot    
Resource    ../pages/HomeInvest_PA.robot
Resource    ../pages/Login_PA.robot

*** Keywords ***

Acessar o statusinvest
    [Arguments]    ${usuario}    ${senha}
    #Abrir o navegador
    base.Abrir a url    
    HomeInvest_PA.Clicar no botão para fazer login 
    Login_PA.Fazer login    ${usuario}    ${senha}
    Wait Until Page Contains          Robot_FW       # Aguardar enquanto não exibir "Testes" na pagina
    Page Should Contain               Robot_FW       # A pagina deve conter "Testes"

 
Quando faço login com o usuario '${usuario}' e senha '${senha}'
    base.Abrir a url    
    HomeInvest_PA.Clicar no botão para fazer login 
    Login_PA.Fazer login    ${usuario}    ${senha}

Então vejo meu usuario '${nome}' logado na pagina principal
    Wait Until Page Contains          Robot_FW       # Aguardar enquanto não exibir "Testes" na pagina
    Page Should Contain               Robot_FW       # A pagina deve conter "Testes"
    #base.Tirar print da tela

Contexto: Logar na StatusInvest com o usuario '${usuario}' e senha '${senha}'
    Acessar o statusinvest    ${usuario}    ${senha}