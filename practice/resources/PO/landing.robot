*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HEADER_LOCATOR}    id=mainNav

*** Keywords ***
Open Landing Page
    Go To           ${URL}

Is Page Valid
    Wait Until Page Contains Element    ${HEADER_LOCATOR}