*** Settings ***
Resource          PO/topNav.robot
Resource          PO/landing.robot
Resource          PO/team.robot

*** Keywords ***
Go To "Landing" Page
    landing.Open Landing Page
    landing.Is Page Valid

Go To "Team" Page
    topNav.Access Team Page
    team.Is "Team" page valid

Validate "Teams" Page
    team.Is "Team" page valid