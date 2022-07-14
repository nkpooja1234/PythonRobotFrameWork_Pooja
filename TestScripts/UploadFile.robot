*** Settings ***

Library    SeleniumLibrary
Library     ../Reusable/pom.py




*** Variables ***




*** Test Cases ***

FileUpload_Validation

    Launch_the_browser

    ${upload}   pom.myImagPath  test.img
    Choose File    file-upload    ${upload}
    Sleep    2
    Click Element    file-submit
    Sleep    10



    Close_My_Browser


*** Keywords ***


Launch_the_browser
    Open Browser    https://the-internet.herokuapp.com/upload    Chrome
    Sleep    2
    Maximize Browser Window
    Sleep    2

Close_My_Browser
    Close All Browsers