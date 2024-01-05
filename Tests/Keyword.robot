*** Settings ***
Documentation      This is some basic info about the suite
Resource           ../Resources/Playground.robot
Resource           ../Resources/Common.robot
Suite Setup        Common.Insert Testing Data
Test Setup         Common.Begin Web Test  
Test Teardown      Common.End Web Test
Suite Teardown     Common.Cleanup Testing Data

*** Variables ***


*** Test Cases ***
User Can Login
    [Documentation]                This is some basic info about the test
    [Tags]                         Smoke

    Playground.Login

User Can Register New Customer
    [Documentation]                This is some basic info about the test
    [Tags]                         Smoke

    Playground.Login
    Playground.Register New Customer