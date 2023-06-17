*** Settings ***
Library    SeleniumLibrary


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
    Close Browser


Acesssar a home da pagina
    Go To    url=${BASE_URL}
    Wait Until Element Is Visible    locator=${locator}

Fazer login com o usuario "${usuario}" e senha "${senha}"
    Acesssar a home da pagina
    Click Element                     //span[contains(.,'ENTRAR')]                  # Clica no botão ENTRAR
    Sleep   1
    Input Text                        //input[@id='Email']      ${usuario}          # Insere o e-mail no campo texto referente
    Sleep   1
    Input Text                        //input[@id='Password']     ${senha}
    Sleep   1
    Wait Until Element Is Visible     //button[@id='btn-login']
    Click Element                     //button[@id='btn-login']
    Page Should Contain Element       //img[@src='/img/logo/logo-main.png?v=22']    # A pagina deve conter o elemento 


Verificar se exibe a palavra "${palavra}" na pagina
    Wait Until Page Contains          Testes                                        # Aguardar enquanto não exibir "Testes" na pagina
    Page Should Contain               Testes                                        # A pagina deve conter "Testes"
    Sleep   1
    #Tirar um print da tela

Tirar um print da tela
    Capture Page Screenshot                                                         # Tira um print da tela como evidência
    Sleep    1