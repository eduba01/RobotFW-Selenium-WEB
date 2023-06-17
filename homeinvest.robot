*** Settings ***
Documentation    Essa suite testa o site de investimentos www.statusinvest.com.br
Resource         ./base.robot                    # referencia o aquivo com as keywords utilizadas abaixo
Resource         ./homeinvest_kw.robot

# Test Setup       Abrir o navegador   # ------ SETUP ------
# Test Teardown    Fechar o navegador       

Suite Setup      Abrir o navegador   # ------ SETUP ------
Suite Teardown   Fechar o navegador       

*** Test Cases *** 
Caso de Teste 01 - Buscar pela ação PETR4
    [Documentation]    Esse teste faz uma busca por um
    ...                papel(ação)
    [Tags]             busca
    Fazer login com o usuario "spclash01@gmail.com" e senha "Spclash01@"
    Verificar se exibe a palavra "Teste" na pagina
    Fazer a busca por pela ação "PETR4"
    Verificar se exibe a palavra "PETR4 - PETROBRAS" na pagina
    Validar a cotação atual da ação

# Caso de Teste 02 - Verificar o dividend yeld
#     [Documentation]    Esse teste faz uma busca por um
#     ...                papel(ação)
#     [Tags]             dividendos
    


