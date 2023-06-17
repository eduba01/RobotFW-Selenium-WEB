![Robot Framework](https://miro.medium.com/v2/resize:fit:553/1*wnMQPTmEsIq0TiRgfX4hig.png)
## Testando uma aplicação web

## ✔️ Técnicas e tecnologias utilizadas

- Robot Framework: ferramenta de automação de teste;
- Selenium: framework para automação de testes em aplicações web;
- Python: linguagem de programação para desenvolvimento de keywords customizadas;
- VS Code: IDE utilizada para desenvolvimento dos testes;
- Google Chrome: navegador web utilizado para execução dos testes.

## 📁 Detalhes do projeto

A aplicação web a ser testada  

A typical cucumber directory pattern (projeto segue o padrão ATDD - style gherkin).  
steps_definitions --> actions   
specifications   --> atest (the same in browser library framework)  
````
.  
├── features                 # Files and folders of framework (root code).  
  ├── support                # Commons files to tests spec (global use).  
     ├── pages               # YML locators.  
     ├── resources           # Json ou YAML files.  
  ├── actions                # Keywords of tests.  
  ├── atest                  # Specification of what the tests should do.  
├── .gitignore              # Files and Folders to ignore in repository.  
├── LICENSE  
├── README.md               # Documentation of project.  
└── requirements.txt        # Libraries to need to install.  
````


## 🛠️ Abrir e rodar 

Aqui vem um passo a passo para abrir e rodar o projeto.
