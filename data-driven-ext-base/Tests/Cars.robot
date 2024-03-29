*** Settings ***
Documentation  Demonstrate a need for data-driven testing
Resource  ../Data/InputData.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/CarsApp.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d data-driven-ext-base/Results data-driven-ext-base/Tests/Cars.robot

*** Variables ***

*** Test Cases ***
Invalid Login scenarios should display correct error messages
    [Template]    Test Multiple Login Scenarios
    ${UNREGISTERED_USER}
    ${INVALID_PASSWORD_USER}
    ${BLANK_CREDENTIALS_USER}