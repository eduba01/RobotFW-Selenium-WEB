*** Settings ***
Library     SeleniumLibrary
Library     String


*** Variables ***

${BASE_URL}              https://statusinvest.com.br
${PATH_FEATURES}         ${EXECDIR}/atests/features
${LOG_LEVEL}             DEBUG
${DIC_EMPTY}
${HEADLESS_FLAG}         ${False}
${BROWSER}               chrome    #headlesschrome 
 
    # #Call Method    ${chrome_options}   add_argument    headless
    # #Call Method    ${chrome_options}   add_argument    --no-sandbox
    # #Call Method    ${chrome_options}   add_argument    disable-gpu
    # Call Method    ${chrome_options}   add_argument    --ignore-certificate-errors