*** Settings ***
Documentation      This is some basic info about the suite
Resource           ../Resources/PlaygroundWithVariables.robot
Resource           ../Resources/CommonWithVariables.robot
Suite Setup        CommonWithVariables.Insert Testing Data
Test Setup         CommonWithVariables.Begin Web Test  
Test Teardown      CommonWithVariables.End Web Test
Suite Teardown     CommonWithVariables.Cleanup Testing Data

*** Variables ***
${BROWSER}        chrome
${URL}            https://automationplayground.com/crm/
@{CREDENTIALS}    test414124@gmail.com    123

*** Test Cases ***
User can login
    [Documentation]                This is some basic info about the test
    [Tags]                         Smoke

    PlaygroundWithVariables.Login  @{CREDENTIALS}

User can register new customer
    [Documentation]                                  This is some basic info about the test
    [Tags]                                           Smoke

    PlaygroundWithVariables.Login                    @{CREDENTIALS}
    PlaygroundWithVariables.Register New Customer
    PlaygroundWithVariables.Logout