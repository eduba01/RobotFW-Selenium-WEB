*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
# - Botão para abrir a tela de lobin
${btn_entrar}                   //span[contains(.,'ENTRAR')]
# - elementos da busca
${lbl_busca}                    //i[contains(.,'search')]
${txt_acao}                     //input[contains(@class,'Typeahead-input input tt-input')]   
${txt_nome_acao}                //span[@title='Nome da empresa/FII']
${cotacao}                      (//strong[contains(@class,'value')])[1]


*** Keywords ***
Clicar no botão para fazer login
    Click Element             ${btn_entrar}         # Clica no botão ENTRAR
    #Sleep    1
 
Fazer a busca por pela ação '${acao}'
    Click Element             ${lbl_busca}
    Input Text                ${txt_acao}         ${acao}
    Click Element             ${txt_nomeAcao} 

Verificar se exibe a palavra '${nome_acao}' na pagina
    Wait Until Page Contains          ${nome_acao}           # Aguardar enquanto não exibir "Testes" na pagina
    #Log      NOME DA ACAO             ${nomeAcao}
    Sleep    1
    Page Should Contain               ${nome_acao}           # A pagina deve conter "Testes"

Pegar a cotação do ativo
    [Arguments]    ${cotacao}
    ${cotacao}=    Get Text    ${cotacao} 
    Log                       ------------ COTACAO DA ACAO ------------ ${cotacao}
    [Return]    ${cotacao}

Validar se a ação esta abaixo da media
    ${cotacao}=     Pegar a cotação do ativo    ${cotacao}
    ${mensagem}  Set Variable If    ${cotacao} > 30,00      Cotação esta abaixo da média da carteira ${cotacao}
    #${cotacao} esta abaixo da média
    Log                        ------------ ${mensagem}
    [Return]    ${mensagem}
   # Verificar o valor da acão 
   # ${cotacao} >= "40,00"