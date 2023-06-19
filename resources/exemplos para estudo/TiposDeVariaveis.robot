*** Variables ***
# Tipo simples
${SIMPLES}     Variavel simples

# Tipo lista (array)
@{AÇÕES}        PETR4    BBAS3    BBDC4

#Tipo dicionario (chave=valor)
&{PETR4}        nome=Petrobras    valor=30,00    dividendY=0,50



*** Test Cases ***
Testando variaveis
    Tipos de variaveis


*** Keywords ***
Tipos de variaveis
# Tipo simples
    Log    ${SIMPLES}

# Tipo lista
    Log    Lista das minhas ações: ${AÇÕES[0]}, ${AÇÕES[1]}, ${AÇÕES[2]}.

#Tipo dicionario
    Log    Ação: ${PETR4.nome}, Valor: ${PETR4.valor} e Dividendos: ${PETR4.dividendY}
