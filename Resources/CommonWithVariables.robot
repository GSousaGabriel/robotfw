*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${COMMON_PAGE_IS_LOADED}       Customers Are Priority One!

*** Keywords ***
Begin Web Test
    Open Browser                      about:blank    ${BROWSER}
    Go To                             ${URL}
    Check Page Is Valid

End Web Test
    Close Browser

Insert Testing Data
    Custom Keyword 1

Cleanup Testing Data
    Log                            Data being cleaned up...

Custom Keyword 1
    Log                            Data being setted up...

Check Page Is Valid
    Page Should Contain            ${COMMON_PAGE_IS_LOADED}