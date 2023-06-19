*** Settings ***
Library    SeleniumLibrary
Library    String
  
*** Variables ***
${lbl_email}                 //input[@id='Email'] 
${Lbl_senha}                 //input[@id='Password']
${btn_login}                 //button[@id='btn-login']
${img_logo}                  //img[@src='/img/logo/logo-main.png?v=22']    # A pagina deve conter o elemento     
${btn_entrar}                //span[contains(.,'ENTRAR')]

*** Keywords ***
Inserir e-mail
    [Arguments]        ${usuario}
    Input Text         ${lbl_email}       ${usuario}         # Insere o e-mail no campo texto referente
    #Sleep    1  
    
Inserir a senha
    [Arguments]        ${senha}
    Input Text         ${Lbl_senha}        ${senha}
    Sleep    1  

Clicar no botão para logar
    Wait Until Element Is Visible     ${btn_login}
    Click Element                     ${btn_login}
    Page Should Contain Element       ${img_logo}           # A pagina deve conter o elemento logo

Fazer login
    [Arguments]       ${usuario}      ${senha}
    Inserir e-mail          ${usuario}        
    Inserir a senha         ${senha}
    Clicar no botão para logar

Validar nome do usuario logado
    [Arguments]        ${nome_usuarioO}
    Wait Until Page Contains          ${nome_usuarioO}              # Aguardar enquanto não exibir "Testes" na pagina
    Page Should Contain               ${nome_usuarioO}              # A pagina deve conter "Testes"
    #base.Tirar print da tela