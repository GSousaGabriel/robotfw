*** Settings ***
Resource    ../Resources/ScopeVariables.robot
Library     SeleniumLibrary

*** Variables ***
@{MY_VAR_LIST}       This is my input    spacing    spacing 243

*** Test Cases ***
Test 1
    [Tags]           current
    ${n_var}         Set Variable        TEST
    @{n_var_list}    Create List         TEST    tes 232
    Log              ${MY_VAR}
    Log              ${MY_VAR_LIST}[2]
    Log              ${n_var}
    Log              ${n_var_list}[1]
Test 2
    @{my_var_list_keyword}    Create List    https://google.com    chrome
    #Web Test                  google          chrome
    Web Test List             @{my_var_list_keyword}
    ${MY_VAR}                 Set Variable    31
    Log                       ${MY_VAR}

*** Keywords ***
Web Test
    [Arguments]      ${url}          ${browser}
    Open Browser     ${url}          ${browser}
    Close Browser

Web Test List
    [Arguments]      @{my_var_list_keyword}
    Open Browser     ${my_var_list_keyword}[0]          ${my_var_list_keyword}[1]
    Sleep            1
    Close Browser
