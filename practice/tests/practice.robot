*** Settings ***
Resource          ../resources/common.robot
Resource          ../resources/appKeyword.robot
Test Setup        common.Start Browser  
Test Teardown     common.Finish Tests 

*** Variables ***
${BROWSER}                 chrome
${URL}                     https://automationplayground.com/front-office/

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]        Test one to access team page
    [Tags]                 Smoke
    appKeyword.Go To "Landing" Page
    appKeyword.Go To "Team" Page

"Team" page should match requirements
    [Documentation]        Test one to check if team page rendered correctly
    [Tags]                 Smoke
    appKeyword.Go To "Landing" Page
    appKeyword.Go To "Team" Page
    appKeyword.Validate "Teams" Page