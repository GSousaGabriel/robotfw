*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${TEAM_LINK}              //div[@id="bs-example-navbar-collapse-1"]//li[5]/a
${TEAM_LINK}               //div[starts-with(@id,"bs-example-navbar-collapse")]//li[5]/a
# ${TEAM_LINK}             //div[Contains(@id,"collapse-1")]//li[5]/a

*** Keywords ***
Access Team Page
    Click Link             ${TEAM_LINK}
    Amount Of List Items

Amount Of List Items
    ${test} =    Should Contain X Times    //a[contains(@class, "page-scroll")]    a    4
    Log    ${test}