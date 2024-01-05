*** Settings ***
Resource          ../resources/Common.robot
Resource          ../resources/PracticeAdvanced.robot
Test Setup        Common.Start Browser  
Test Teardown     Common.Finish Tests 

*** Variables ***
${BROWSER}                 chrome
${ENVIRONMENT}             prod
&{WEBSITE_DICT}            dev=https://google.com    prod=https://uol.com.br

*** Test Cases ***
Should run first
    PracticeAdvanced.Valid With If/Else
    PracticeAdvanced.Loop Data List
    PracticeAdvanced.Dictionaries Practice
    PracticeAdvanced.Dictionaries Practice Forwarding    ${WEBSITE_DICT} 