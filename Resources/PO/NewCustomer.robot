*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Register New Customer
    Check Page Loaded
    Input Customer Data
    Save New Customer

Check Page Loaded
    Page Should Contain            Add Customer

Input Customer Data
    Input Text                     EmailAddress    roger@gmail.com
    Input Text                     FirstName       Roger
    Input Text                     LastName        Silva
    Input Text                     City            Artur Nogueira
    Select From List By Value      StateOrRegion   CO
    Select Radio Button            gender          male
    Select Checkbox                promos-name

Save New Customer
    Click Button                   Submit