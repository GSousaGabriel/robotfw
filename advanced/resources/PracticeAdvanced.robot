*** Settings ***
Resource    PO/Landing.robot

*** Variables ***
${MY_VALUE}                200

*** Keywords ***    
Valid With If/Else
    Run Keyword If    ${MY_VALUE} < 100    Print Info 1    
    ...  ELSE IF    ${MY_VALUE} == 150    Print Info 2    
    ...  ELSE    Print Info 2

Loop Data List
    @{MY_VALUE_LIST}    Create List         1    2    4    3

    FOR    ${VALUE}     IN     @{MY_VALUE_LIST}
        Exit For Loop If    ${VALUE} == 4
        Print Info 3    ${VALUE}
    END
    FOR    ${VALUE}     IN RANGE    3    4
        Print Info 3    ${VALUE}
    END
    FOR    ${VALUE}     IN RANGE    3
        Print Info 3    ${VALUE}
    END

    Repeat Keyword    4    Print Info 4

Dictionaries Practice
    Landing.Open Landing Page Adv

Dictionaries Practice Forwarding
    [Arguments]    ${UrlData}
    Landing.Open Landing Page Adv Forwarding    ${UrlData}

Print Info 1
    Log    printed ${MY_VALUE} < 100

Print Info 2
    Log    printed ${MY_VALUE} > 100

Print Info 3
    [Arguments]    ${VALUE_LOOPED}
    Log            Printing looped value of ${VALUE_LOOPED}

Print Info 4
    Log    loop Repeat key