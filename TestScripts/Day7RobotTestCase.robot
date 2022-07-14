*** Settings ***
Library    SeleniumLibrary



*** Variables ***



*** Test Cases ***

CheckBoxDropDown_Selection

    Open Browser    https://codepen.io/RobotsPlay/pres/pyNLdL    Chrome
    Sleep    2
    Maximize Browser Window
    Sleep    2

    Select Frame    id:result
    Wait Until Page Contains Element    xpath://div[@class='dropdown']
    Sleep    2
    Click Element    //div[@class='dropdown']
    Sleep    2
    Click Element    //input[@value='Selection 1']
    Sleep    2
    Click Element    //input[@value='Selection 2']
    Sleep    2
    Click Element    //input[@value='Selection 3']
    Sleep    2
    Unselect Frame

    Close All Browsers



*** Keywords ***


