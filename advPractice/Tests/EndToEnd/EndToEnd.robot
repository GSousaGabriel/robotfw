*** Settings ***
Documentation  Talk about what this suite of tests does
Resource  ../../Data/InputData.robot
Resource  ../../Resources/BackOffice/BackOfficeApp.robot
Resource  ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource  ../../Resources/Common/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/FrontOffice/Front_Office.robot
*** Test Cases ***
Should be able to access both sites
    [Documentation]  This is test 1
    [Tags]  test1
    FrontOfficeApp.Go to Landing Page
    BackOfficeApp.Go to Landing Page