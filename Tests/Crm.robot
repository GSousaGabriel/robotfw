*** Settings ***
Documentation      This is some basic info about the suite
Library            SeleniumLibrary

*** Variables ***



*** Test Cases ***
Should be able to log in
    [Documentation]           This is some basic info about test
    [Tags]                    1006    Smoke    Contacts
    #Initialize Selenium
    Set Selenium Speed        .2s
    Set Selenium Timeout      10s

    Log                       Starting browser test
    Open Browser              https://automationplayground.com/crm/    chrome

    Page Should Contain       Customers Are Priority One
    Click Link                SignIn
    Input Text                email-id        test@gmail.com
    Input Password            password        123
    Click Button              submit-id
    Page Should Contain       Our Happy Customers

Should be able to register new customer
    Click Link                    new-customer
    Page Should Contain           Add Customer
    Input Text                    EmailAddress    roger@gmail.com
    Input Text                    FirstName       Roger
    Input Text                    LastName        Silva
    Input Text                    City            Artur Nogueira
    Select From List By Value     StateOrRegion   CO
    Select Radio Button           gender          male
    Select Checkbox               promos-name
    Sleep                         1.5s

    Click Button                  Submit
    Sleep                         3s

    Close Browser


*** Keywords ***