![Robot Framework](https://miro.medium.com/v2/resize:fit:553/1*wnMQPTmEsIq0TiRgfX4hig.png)
## Testando uma aplicação web

## ✔️ Técnicas e tecnologias utilizadas

- Robot Framework: ferramenta de automação de teste;
- Selenium: framework para automação de testes em aplicações web;
- Python: linguagem de programação para desenvolvimento de keywords customizadas;
- VS Code: IDE utilizada para desenvolvimento dos testes;
- Google Chrome: navegador web utilizado para execução dos testes.

## 📁 Detalhes 

A aplicação web a ser testada com a biblioteca #SeleniumLibrary
 
````
 ├── features                 # Files and folders of framework, test cases (root code).  
 ├── pages                    # Action pages.  
 ├── resources                # Json or YAML files.  
 ├── steps                    # Keywords of tests.  
  ├── .gitignore                 # Files and Folders to ignore in repository.  
  ├── LICENSE  
  ├── README.md                  # Documentation of project.  
  └── requirements.txt           # Libraries to need to install.  
````


## 🛠️ Instalação e configurações

## Run tests
````
cd features

robot -d  results login.robot 

robot -d  results login.robot && robotmetrics --inputpath ./Results/ --output output.xml --log log.html --logo "https://static.carrefour.com.br/imagens/home-carrefour/img/logoCarrefourSite.svg"
````
 
## Instalar  python
WIN 
````
https://python.org.br/instalacao-windows/Linux (geralmente ja vem instalado)
 
sudo apt-get install python3

Update pippython -m 
pip install --upgrade pip
````
Instalar  robot
````
https://robotframework.org/
 
pip install robotframework
````
## Instalar  libraries
````
https://robotframework.org/#libraries
````

## Gerar dados fakes
````
pip install robotframework-faker
````

## Testes Web
````
pip install --upgrade robotframework-seleniumlibrary
````

## Testes Servico (API)
```
pip install robotframework-requests
````

*config vscode*

http://robotizandotestes.blogspot.com/2020/02/season-editores-ep-02-visual-studio.html

## Baixar drivers do chrome  e firefox
````
pip install webdrivermanager
webdrivermanager firefox chrome --linkpath C:\Python\Scripts
````

## Intalar metrics para geração de Reports
````
https://github.com/xNok/robotframework-metrics
````

## Intalar library json
````
https://robotframework-thailand.github.io/robotframework-jsonlibrary/JSONLibrary.html

pip install robotframework-jsonlibrary
https://robotframework-thailand.github.io/robotframework-jsonlibrary/JSONLibrary.html
````

## Run tests
````
robot -d  results checkout.robot && robotmetrics --inputpath ./Results/ --output output.xml --log log.html --logo "https://static.carrefour.com.br/imagens/home-carrefour/img/logoCarrefourSite.svg"
````
**Executar somente testes identificados com determinada Tag: (smoketest).**
````
robot -d ./results -i smoketest Testes
````
**-e para que NÃO sejam executados os testes identificados com determinada Tag:**
````
robot -d ./MeusResultados -e smoketest Testes
````
**Com valores Atribuindo valores a variáveis:**
````
robot  -d ./MeusResultados -v BROWSER:chrome Testes
````
-Será atribuído o valor (chrome) à variável (${BROWSER}) do meu teste 


## Exemplo data driven

````
*** Settings ***
Test Template         Login with invalid credentials should fail

*** Test Cases ***    USERNAME             PASSWORD
Invalid Username      invalid              ${VALID PASSWORD}
Invalid Password      ${VALID USERNAME}    invalid
Invalid Both          invalid              invalid
Empty Username        ${EMPTY}             ${VALID PASSWORD}
Empty Password        ${VALID USERNAME}    ${EMPTY}
Empty Both            ${EMPTY}             ${EMPTY}

*** Keywords ***
Login with invalid credentials should fail
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Submit Credentials
    Error Page Should Be Open
````
