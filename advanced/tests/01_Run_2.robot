*** Settings ***
Resource          ../resources/Common.robot
Resource          ../resources/AppKeyword.robot
Test Setup        Common.Start Browser  
Test Teardown     Common.Finish Tests 

*** Variables ***
${BROWSER}                 chrome
${URL}                     https://automationplayground.com/front-office/

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]        Test one to access team page
    [Tags]                 Smoke
    AppKeyword.Go To "Landing" Page
    AppKeyword.Go To "Team" Page
    Sleep    3s

# "Team" page should match requirements
#     [Documentation]        Test one to check if team page rendered correctly
#     [Tags]                 Smoke
#     AppKeyword.Go To "Landing" Page
#     AppKeyword.Go To "Team" Page
#     AppKeyword.Validate "Teams" Page