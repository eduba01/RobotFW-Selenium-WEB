*** Settings ***
Documentation    Essa suite testa o site de investimentos www.statusinvest.com.br
Resource         ./base.robot
Test Setup       Abrir o navegador    # ------ SETUP ------
Test Teardown    Fechar o navegador   # ------ SETUP ------      

*** Test Cases ***
Caso de Teste 01 - Fazer Login
    [Documentation]    Faz login na pagina
    [Tags]             login
    Fazer login com o usuario "spclash01@gmail.com" e senha "Spclash01@"
    Verificar se exibe a palavra "Teste" na pagina
 
 

