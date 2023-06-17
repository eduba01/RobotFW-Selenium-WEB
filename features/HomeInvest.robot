*** Settings ***
Documentation    Eu como investidor 
            ...  Gostaria de acessar a pagina Status Invest
            ...  Para gerenciar meus investimentos
                    ...    [Ação]               >>        [Comandos]  
                    ...    Executar a suite     >>        robot -d ../logs features/login.robot
                    ...        
            
Metadata    Version     #1.0.0.1            # versão inicial
Metadata    Author      #Eduardo Barbosa
Metadata    Link        #Status Invest

Resource         ../resources/base.robot                    # referencia o aquivo com as keywords utilizadas abaixo
Resource         ../steps/loginSteps.robot
Resource         ../features/login.robot

# # Test Setup       Abrir o navegador   # ------ SETUP ------
# # Test Teardown    Fechar o navegador       
# Suite Setup      Abrir o navegador   # ------ SETUP ------
# Suite Teardown   Fechar o navegador       

*** Test Cases *** 

Caso de Teste 01 - Buscar pela ação PETR4
    [Documentation]    Esse teste faz uma busca por um
    ...                papel(ação)
    [Tags]             busca 

    Dado que eu acesso a pagina statusinvest
    Quando faço login com o usuario 'spclash01@gmail.com' e senha 'Spclash01@'
    Então vejo meu usuario 'Robot_FW' logado na pagina principal 
    #Quando faço uma busca pela ação "PETR4"
    #Então vejo a palavra "PETR4 - PETROBRAS" na pagina


  #  Fazer login com o usuario "spclash01@gmail.com" e senha "Spclash01@"
    # Verificar se exibe a palavra "Teste" na pagina
    # Fazer a busca por pela ação "PETR4"
    # Verificar se exibe a palavra "PETR4 - PETROBRAS" na pagina
    # Validar a cotação atual da ação

# Caso de Teste 02 - Verificar o dividend yeld
#     [Documentation]    Esse teste faz uma busca por um
#     ...                papel(ação)
#     [Tags]             dividendos
    


