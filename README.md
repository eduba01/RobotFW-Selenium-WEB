# robot-fw01-web

✔️ Técnicas e tecnologias utilizadas
Robot Framework: ferramenta de automação de teste;
Selenium: framework para automação de testes em aplicações web;
Python: linguagem de programação para desenvolvimento de keywords customizadas;
VS Code: IDE utilizada para desenvolvimento dos testes;
Google Chrome: navegador web utilizado para execução dos testes.

📁 Acesso ao projeto
Você pode acessar o código fonte do projeto inicial.

🛠️ Abrir e rodar 
Aqui vem um passo a passo para abrir e rodar o projeto.

A typical cucumber directory pattern (projeto segue o padrão ATDD - style gherkin).
steps_definitions --> actions
specifications --> atest (the same in browser library framework)
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
