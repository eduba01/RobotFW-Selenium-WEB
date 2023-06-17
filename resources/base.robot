*** Settings ***
Library     SeleniumLibrary
Resource     ../global_variables.robot
 
*** Keywords ***
Abrir o navegador  
  
    Open Browser                    about:blank      ${BROWSER}    
    ...                             options=add_experimental_option("detach", True) 
    Set Selenium Implicit Wait      5
    Set Window Size                 1356    725
    #Maximize Browser Window

Fechar o navegador
    #Tirar print da tela
    Close Browser

Abrir a url
    Go To    url=${BASE_URL}
    Wait Until Element Is Visible    //img[@src='/img/logo/logo-main.png?v=22']

Tirar print da tela
    Capture Page Screenshot             # Tira um print da tela como evidência

### BDD ###
Dado que eu acesso a pagina statusinvest
    Abrir o navegador 
    Abrir a url