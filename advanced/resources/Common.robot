*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Start Browser
    Open Browser    about:blank    ${BROWSER}
    
Finish Tests
    Close All Browsers