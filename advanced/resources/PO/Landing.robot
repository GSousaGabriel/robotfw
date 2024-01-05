*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HEADER_LOCATOR}    id=mainNav

*** Keywords ***
Open Landing Page
    Go To           ${URL}

Open Landing Page Adv
    Go To           ${WEBSITE_DICT.${ENVIRONMENT}}

Open Landing Page Adv Forwarding
    [Arguments]     ${url_data}    
    Go To           ${url_data.${ENVIRONMENT}}

Is Page Valid
    Wait Until Page Contains Element    ${HEADER_LOCATOR}
    [Return]                            Valid!