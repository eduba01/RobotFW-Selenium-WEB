*** Settings ***
Library    SeleniumLibrary
Library    String
Documentation    Suite de testes na pagina home
            ...  -- Version     1.0.0.1           
            ...  -- Author      Eduardo Barbosa
Resource           ../resources/base.robot
Resource           ../steps/Homeinvest_kw.robot  
Resource           ../steps/Login_kw.robot
#Resource          ../resources/BDDpt-br.robot

Test setup         Abrir o navegador  
#Suite Setup        Abrir o navegador
Test Teardown      Fechar o navegador  
#Suite Teardown     Fechar o navegador 

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
    [Tags]             valor     regressivo
    Contexto: Logar na StatusInvest com o usuario 'spclash01@gmail.com' e senha 'Spclash01@'         
 
    Quando faço uma busca pela ação 'PETR4' 
    Então vejo a cotação do ativo 'PETR4'  
     
Caso de Teste 03 - Validar se a cotação esta acima da media
    [Documentation]    Esse teste verifica o valor de uma ação esta abaixo da média da carteira            
    [Tags]             test     regressivo
    Contexto: Logar na StatusInvest com o usuario 'spclash01@gmail.com' e senha 'Spclash01@'         
 
    Quando faço uma busca pela ação 'PETR4' 
    Então vejo a cotação esta acima da media   


