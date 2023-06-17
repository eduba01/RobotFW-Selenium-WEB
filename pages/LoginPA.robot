*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/base.robot
Resource    ../features/login.robot
Resource    ../features/HomeInvest.robot

*** Variables ***
${lblEmail}                 //input[@id='Email'] 
${LblSenha}                 //input[@id='Password']
${btnLogin}                 //button[@id='btn-login']
${imgLogo}                  //img[@src='/img/logo/logo-main.png?v=22']    # A pagina deve conter o elemento     
${btnEntrar}                //span[contains(.,'ENTRAR')]

*** Keywords ***
 
Inserir e-mail
    [Arguments]        ${usuario}
    Input Text         ${lblEmail}       ${usuario}         # Insere o e-mail no campo texto referente

Inserir a senha
    [Arguments]        ${senha}
    Input Text         ${LblSenha}        ${senha}

Clicar no botão para logar
    Wait Until Element Is Visible     ${btnLogin}
    Click Element                     ${btnLogin}
    Page Should Contain Element       ${imgLogo}           # A pagina deve conter o elemento logo

Fazer login
    [Arguments]       ${usuario}      ${senha}
    Inserir e-mail          ${usuario}           
    Inserir a senha         ${senha}
    Clicar no botão para logar