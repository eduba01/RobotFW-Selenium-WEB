*** Settings ***
Library    SeleniumLibrary
Library    String
Documentation    Suite de testes na pagina home
            ...  -- Version     1.0.0.1           
            ...  -- Author      Eduardo Barbosa
Resource         ../resources/base.robot
Resource         ../steps/homeinvestSteps.robot  
Resource         ../steps/loginSteps.robot
#Resource        ../resources/BDDpt-br.robot
#Suite Setup      Abrir o navegador
#Test setup        Abrir o navegador  
Suite Teardown     Fechar o navegador 
Test Teardown      Fechar o navegador   

*** Test Cases *** 
Caso de Teste 01 - Buscar pela ação PETR4
    [Documentation]    Esse teste faz uma busca por uma ação            
    [Tags]             busca     regressivo
    Dado que eu acesso a pagina statusinvest 
    Quando faço login com o usuario 'spclash01@gmail.com' e senha 'Spclash01@' 
    Então vejo meu usuario 'Robot_FW' logado na pagina principal
    Quando faço uma busca pela ação 'PETR4' 
    Então vejo a palavra 'PETR4 - PETROBRAS' na pagina 

Caso de Teste 02 - Validar o valor da Ação
    [Documentation]    Esse teste verifica o valor de uma ação              
    [Tags]             busca     regressivo
    Dado que eu acesso a pagina statusinvest
    Quando faço login com o usuario 'spclash01@gmail.com' e senha 'Spclash01@'
    Quando faço uma busca pela ação 'PETR4' 
    Então vejo a cotação do ativo 
     

# Caso de Teste 02 - Verificar o dividend yeld
#     [Documentation]    Esse teste faz uma busca por um
#     ...                papel(ação)
#     [Tags]             dividendos
    


