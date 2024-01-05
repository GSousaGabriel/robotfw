*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Login
    Input Data
    Send Data To Login

Input Data
    Input Text          email-id        test@gmail.com
    Input Password      password        123
Send Data To Login
    Click Button        submit-id