*** Settings ***
Documentation      This is some basic info about the suite
Library            SeleniumLibrary

*** Variables ***



*** Test Cases ***
Test case
    [Documentation]                This is some basic info about the test
    [Tags]                         Smoke

    Begin Web Test
    Load Page
    Login
    Register New Customer
    End Web Test

*** Keywords ***
Begin Web Test
    Open Browser                   about:blank    chrome

Load Page
    Go To                          https://automationplayground.com/crm/
    Wait Until Page Contains       Customers Are Priority One!

Login
    Click Link                     SignIn
    Input Text                     email-id        test@gmail.com
    Input Password                 password        123
    Click Button                   submit-id
    Page Should Contain            Our Happy Customers

Register New Customer
    Click Link                     new-customer
    Page Should Contain            Add Customer
    Input Text                     EmailAddress    roger@gmail.com
    Input Text                     FirstName       Roger
    Input Text                     LastName        Silva
    Input Text                     City            Artur Nogueira
    Select From List By Value      StateOrRegion   CO
    Select Radio Button            gender          male
    Select Checkbox                promos-name
    Click Button                   Submit

End Web Test
    Close Browser