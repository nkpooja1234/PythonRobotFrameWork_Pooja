*** Settings ***

Library    SeleniumLibrary




*** Variables ***




*** Test Cases ***

CheckBox_Validation

    Launch_the_browser



TestTable_HTML_robot
    ${rowCount}     Get Element Count    //table[@name='BookTable']/tbody/tr
    Log To Console    ${rowCount}
    ${colCount}     Get Element Count    //table[@name='BookTable']/tbody/tr[1]/th
    Log To Console    ${colCount}

    ${readTableData}     Get Text    //table[@name='BookTable']/tbody/tr[1]/th[1]
    Log To Console    ${readTableData}
    ${readTableData}     Get Text    //table[@name='BookTable']/tbody/tr[1]/th[2]
    Log To Console    ${readTableData}
    ${readTableData}     Get Text    //table[@name='BookTable']/tbody/tr[1]/th[3]
    Log To Console    ${readTableData}
    ${readTableData}     Get Text    //table[@name='BookTable']/tbody/tr[1]/th[4]
    Log To Console    ${readTableData}

    Table Column Should Contain    //table[@name='BookTable']    4    2000

    Table Row Should Contain    //table[@name='BookTable']    2    Learn Selenium
    Table Row Should Contain    //table[@name='BookTable']    2    Amit

    Table Cell Should Contain    //table[@name='BookTable']    7    1    Master In JS
    Table Cell Should Contain    //table[@name='BookTable']    3    4    500

    Table Header Should Contain    //table[@name='BookTable']    BookName

    

    Close_My_Browser


*** Keywords ***


Launch_the_browser
    Open Browser    https://testautomationpractice.blogspot.com/    Chrome
    Sleep    2
    Maximize Browser Window
    Sleep    2

Close_My_Browser
    Close All Browsers