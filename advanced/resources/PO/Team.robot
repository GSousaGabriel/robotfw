*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${IS_TEAM_PAGE_VALID}    //*[@id="team"]/div/div[1]/div/h2

*** Keywords ***
Is "Team" page valid
    ${ElementText} =  get text  ${IS_TEAM_PAGE_VALID}
    should be equal as strings  ${ElementText}  Our Amazing Team  ignore_case=true
    