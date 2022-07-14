*** Settings ***

Library    SeleniumLibrary




*** Variables ***




*** Test Cases ***



CheckBox_Validation

    Launch_the_browser
    Wait Until Page Contains Element    xpath:(//input[@type='checkbox'])[1]
    #   Validate Check box 1 is not checked
    Checkbox Should Not Be Selected    xpath:(//input[@type='checkbox'])[1]
    Sleep    2
    #   Validate Check box 2 is checked
    Checkbox Should Be Selected    xpath:(//input[@type='checkbox'])[2]
    Sleep    2
    #   Check the Check box 1
    Select Checkbox    xpath:(//input[@type='checkbox'])[1]
    Sleep    2
    #   Now Check box 1 is checked
    Checkbox Should Be Selected    xpath:(//input[@type='checkbox'])[1]
    Sleep    2
    #   UnCheck check box 2
    Unselect Checkbox    xpath:(//input[@type='checkbox'])[2]
    Sleep    2
    #   Now Check Check box 2 is not checked
    Checkbox Should Not Be Selected    xpath:(//input[@type='checkbox'])[2]
    Sleep    2

    Close_My_Browser




*** Keywords ***


Launch_the_browser
    Open Browser    https://the-internet.herokuapp.com/checkboxes    Chrome
    Sleep    2
    Maximize Browser Window
    Sleep    2

Close_My_Browser
    Close All Browsers