*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${NEW_CUSTOMER_PAGE_IS_LOADED}        Add Customer
@{EMAIL_FIELD_DATA}                   id=EmailAddress    roger@gmail.com
@{FIRSTNAME_FIELD_DATA}               id=FirstName       Roger
@{LASTNAME_FIELD_DATA}                id=LastName        Silva
@{CITY_FIELD_DATA}                    id=City            Artur Nogueira
@{STATE_FIELD_DATA}                   id=StateOrRegion   CO
@{GENDER_FIELD_DATA}                  gender             male
${PROMO_RADIO_LOCATOR}                name=promos-name
${SAVE_NEW_CUSTOMER}                  Submit

*** Keywords ***
Register New Customer
    Check Page Is Valid   
    Input Customer Data
    Save New Customer         

Input Customer Data
    Input Text                    ${EMAIL_FIELD_DATA}[0]       ${EMAIL_FIELD_DATA}[1]
    Input Text                    ${FIRSTNAME_FIELD_DATA}[0]   ${FIRSTNAME_FIELD_DATA}[1]
    Input Text                    ${LASTNAME_FIELD_DATA}[0]    ${LASTNAME_FIELD_DATA}[1]
    Input Text                    ${CITY_FIELD_DATA}[0]        ${CITY_FIELD_DATA}[1]
    Select From List By Value     ${STATE_FIELD_DATA}[0]       ${STATE_FIELD_DATA}[1]
    Select Radio Button           ${GENDER_FIELD_DATA}[0]      ${GENDER_FIELD_DATA}[1]
    Select Checkbox               ${PROMO_RADIO_LOCATOR}

Save New Customer
    Click Button                  ${SAVE_NEW_CUSTOMER}

Check Page Is Valid
    Page Should Contain           ${NEW_CUSTOMER_PAGE_IS_LOADED}