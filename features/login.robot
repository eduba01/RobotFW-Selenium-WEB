*** Settings ***
Documentation    Eu como investidor 
            ...  Gostaria de acessar a pagina Status Invest
            ...  Para gerenciar meus investimentos

Metadata    Version     #1.0.0.1            # versão inicial
Metadata    Author      #Eduardo Barbosa
Metadata    Link        #Status Invest

Resource         ../resources/base.robot
Resource         ../steps/loginSteps.robot 
    
#Test Setup        Abrir a url

*** Test Cases ***
Caso de Teste 01 - Fazer Login
    [Documentation]    Faz login na pagina
    [Tags]             login
          
    Dado que eu acesso a pagina statusinvest
    Quando faço login com o usuario 'spclash01@gmail.com' e senha 'Spclash01@'
    Então vejo meu usuario 'Robot_FW' logado na pagina principal 
    Sleep    5
 
  