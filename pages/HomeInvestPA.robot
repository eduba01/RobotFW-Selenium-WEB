*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${btnEntrar}                       //span[contains(.,'ENTRAR')]

 
*** Keywords ***

Clicar no botão para fazer login
    Click Element                   ${btnEntrar}                  # Clica no botão ENTRAR