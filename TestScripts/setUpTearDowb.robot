*** Settings ***

Library    SeleniumLibrary
Suite Setup     Launch_the_browser
Suite Teardown      Close_My_Browser

#Test Setup      Launch_the_browser
#Test Teardown       Close_My_Browser

*** Variables ***
${linksName}    Machine Learning with TensorFlow on Google Cloud Platform

*** Test Cases ***


Validate_Google_logo

    Wait Until Page Contains Element    //img[@class='lnXdpd']

Validate_google_Serach
    Wait Until Page Contains Element    //img[@class='lnXdpd']



*** Keywords ***


Launch_the_browser
    Open Browser    https://www.google.com/    Chrome
    Sleep    2
    Maximize Browser Window
    Sleep    2

Close_My_Browser
    Close All Browsers