*** Settings ***
Library     DateTime
*** Variables ***

*** Test Cases ***

CurrentDate_capture

    ${dateTime}=    Get Current Date
    Log To Console      ${dateTime}


    ${dateTime}=    Add Time To Date    ${dateTime}    10 days
    Log To Console    ${dateTime}

    ${dateTime}=    Add Time To Date    ${dateTime}    -10 days
    Log To Console    ${dateTime}

*** Keywords ***