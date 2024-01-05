*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Login Successful
    Check Login  

Register New Customer
    Click Link                     new-customer

Check Login
    Page Should Contain            Our Happy Customers