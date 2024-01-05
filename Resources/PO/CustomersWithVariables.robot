*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${NEW_CUSTOMER_BUTTON}             id=new-customer
${CUSTOMERS_PAGE_IS_LOADED}        Our Happy Customers

*** Keywords ***
Login Successful
    Check Login  

Register New Customer
    Click Link                     ${NEW_CUSTOMER_BUTTON}

Check Login
    Page Should Contain            ${CUSTOMERS_PAGE_IS_LOADED}