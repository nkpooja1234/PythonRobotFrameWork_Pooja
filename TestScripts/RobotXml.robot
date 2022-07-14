*** Settings ***

Library     SeleniumLibrary
Library    String
Library     OperatingSystem
Library     ../Reusable/pom.py



*** Variables ***

#${popularCourse}    Data Science Course,Artificial Intelligence Course,Machine Learning Certification Course,Python Certification
#${url}  https://intellipaat.com/
#${browser}  headlesschrome
#${browser}  Chrome
#//h4[text()='Popular Courses']/../p[3]/a[text()='Data Science Course']




*** Test Cases ***

Popular_Courses_Testing_001

    read_XML_Test_Data
    Open Browser     ${url}        ${browser}
    Sleep    2
    Maximize Browser Window
    Sleep    2

    #Split Popular Courses

    @{subpopularlinks}=     Split String    ${popularCourse}    ,

    #To iterate the String of array..............

    FOR    ${ele}    IN    @{subpopularlinks}
        Log    ${ele}
        Log To Console    ${ele}
        ${runtimeXpath}=    pom.PopularCoursesXpathLink     ${ele}
        Wait Until Page Contains Element    ${runtimeXpath}



    END


    Close All Browsers





*** Keywords ***

read_XML_Test_Data
    ${url}=    pom.Readxml     url
    ${browser}    pom.Readxml     browser
    ${FleekTopMenuBars}    pom.Readxml     FleekTopMenuBars
    ${popularCourse}    pom.Readxml     FleekTopMenuBars

    Set Global Variable    ${url}
    Set Global Variable    ${browser}
    Set Global Variable    ${popularCourse}
