*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser                   about:blank    chrome
    Go To                          https://automationplayground.com/crm/
    Wait Until Page Contains       Customers Are Priority One!

End Web Test
    Close Browser

Insert Testing Data
    Custom Keyword 1

Cleanup Testing Data
    Log                            Data being cleaned up...

Custom Keyword 1
    Log                            Data being setted up...