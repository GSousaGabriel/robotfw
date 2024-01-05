*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TEAM_LINK}               //*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a

*** Keywords ***
Access Team Page
    Click Link             ${TEAM_LINK}