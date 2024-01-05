*** Settings ***
Library            ../libraries/CustomLibrary.py
Resource          PO/TopNav.robot
Resource          PO/Landing.robot
Resource          PO/Team.robot

*** Keywords ***

Go To "Landing" Page
    Landing.Open Landing Page
    ${ReturnedInfo} =    Landing.Is Page Valid
    Log    ${ReturnedInfo}
    Do Some Custom Thing
    
Do Some Custom Thing
    Do Something Special

Go To "Team" Page
    TopNav.Access Team Page
    Team.Is "Team" page valid

Validate "Teams" Page
    Team.Is "Team" page valid