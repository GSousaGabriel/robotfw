*** Settings ***
Resource        ./PO/TopNav.robot
Resource        ./PO/LoginWithVariables.robot
Resource        ./PO/CustomersWithVariables.robot
Resource        PO/NewCustomerWithVariables.robot

*** Keywords ***
Login
    [Arguments]                     @{Credentials}
    TopNav.Login Page
    LoginWithVariables.Login        @{Credentials} 

Register New Customer
    CustomersWithVariables.Register New Customer
    NewCustomerWithVariables.Register New Customer

Logout
    TopNav.Logout