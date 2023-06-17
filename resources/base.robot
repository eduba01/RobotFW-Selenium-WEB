*** Settings ***
Library    SeleniumLibrary
Resource    ../features/login.robot
Resource    ../features/HomeInvest.robot

*** Variables ***
${BASE_URL}         https://statusinvest.com.br/
${BROWSER}          chrome
${locator}          //img[@src='/img/logo/logo-main.png?v=22']

*** Keywords ***
Abrir o navegador  
    Open Browser                    about:blank      ${BROWSER}
    Set Selenium Implicit Wait      5
    Set Window Size                 1356    725

Fechar o navegador
    Tirar um print da tela
    #Close Browser


Abrir a url
    Go To    url=${BASE_URL}
    Wait Until Element Is Visible    locator=${locator}


Tirar um print da tela
    Capture Page Screenshot                                                         # Tira um print da tela como evidência
    Sleep    1


Dado que eu acesso a pagina statusinvest
    Abrir o navegador 
    Abrir a url