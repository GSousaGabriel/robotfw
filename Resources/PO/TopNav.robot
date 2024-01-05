*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${TOPNAV_SIGNIN_BUTTON}    id=SignIn
${TOPNAV_SIGNOUT_BUTTON}   Sign Out

*** Keywords ***
Login Page
    Click Link             ${TOPNAV_SIGNIN_BUTTON}

Logout
    Click Link             ${TOPNAV_SIGNOUT_BUTTON}

