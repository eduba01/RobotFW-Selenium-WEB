*** Settings ***
Library    SeleniumLibrary
Library    String
Documentation    Suite de testes na pagina de login
            ...  -- Version     1.0.0.1           
            ...  -- Author      Eduardo Barbosa
Resource           ../resources/base.robot
Resource           ../steps/login_kw.robot   
#Suite Setup       Abrir o navegador
#Test setup        Abrir o navegador  
Suite Teardown     Fechar o navegador 
Test Teardown      Fechar o navegador  

*** Test Cases ***
Caso de Teste 01 - Fazer Login
    [Documentation]    Faz login na pagina
    [Tags]             login    regressivo     
    Dado que eu acesso a pagina statusinvest
    Quando faço login com o usuario 'spclash01@gmail.com' e senha 'Spclash01@'
    Então vejo meu usuario 'Robot_FW' logado na pagina principal  
  
# Caso de Teste 02 - Fazer Login
#     [Documentation]    Faz login na pagina 
#     [Tags]             login    regressivo
          
#     Dado que eu acesso a pagina statusinvest
#     Quando faço login com o usuario 'spclash01@gmail.com' e senha 'Spclash01@'
#     Então vejo meu usuario 'Robot_FW' logado na pagina principal 