*** Settings ***
Resource        ./PO/TopNav.robot
Resource        ./PO/Login.robot
Resource        ./PO/Customers.robot

*** Keywords ***
Login
    TopNav.Login Page
    Login.Login    

Register New Customer
    Customers.Register New Customer