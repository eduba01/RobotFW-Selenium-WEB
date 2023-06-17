*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/base.robot    
Resource    ../pages/HomeInvestPA.robot
Resource    ../pages/LoginPA.robot

*** Keywords ***
#Quando faço login com o usuario 'spclash01@gmail.com' e senha 'Spclash01@'
Quando faço login com o usuario '${usuario}' e senha '${senha}'
    base.Abrir a url    
    HomeInvestPA.Clicar no botão para fazer login
    LoginPA.Fazer login    ${usuario}    ${senha}

Então vejo meu usuario '${nome}' logado na pagina principal
    Wait Until Page Contains          Robot_FW                                        # Aguardar enquanto não exibir "Testes" na pagina
    Page Should Contain               Robot_FW                                        # A pagina deve conter "Testes"
    #Tirar um print da tela

