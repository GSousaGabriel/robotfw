*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${LOGIN_EMAIL}        id=email-id
${LOGIN_PASS}         id=password
${SUBMIT_BUTTON}      id=submit-id

*** Keywords ***
Login
    [Arguments]           @{Credentials}
    Input Data            @{Credentials}
    Send Data To Login

Input Data
    [Arguments]         @{Credentials}
    Input Text          ${LOGIN_EMAIL}       ${Credentials}[0]
    Input Password      ${LOGIN_PASS}        ${Credentials}[1]
    
Send Data To Login
    Click Button        ${SUBMIT_BUTTON}