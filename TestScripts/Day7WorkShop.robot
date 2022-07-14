*** Settings ***
Library     SeleniumLibrary
Library     ../Reusable/pom.py
Library     String


*** Variables ***

${ExpectedStringInUrl}      software-testing-agency-contact
*** Test Cases ***

#TestCase1_Validation

        #read_XML_Test_Data
        #Open Browser    ${appurl}    ${browser}
        #Sleep    2
        #Maximize Browser Window
        #Sleep    2
        #TestCase1_Validation_TC_001


#TestCase2_Validation
        #read_XML_Test_Data
        #Open Browser    ${appurl}    ${browser}
        #Sleep    2
        #Maximize Browser Window
        #Sleep    2
        #TestCase2_Validation_TC_002


TestCase3_Validation
        read_XML_Test_Data
        Open Browser    ${appurl}    ${browser}
        Sleep    2
        Maximize Browser Window
        Sleep    2
        Scroll Element Into View    //h2[text()='CLIENT SAYS']
        Sleep    3
        Wait Until Page Contains Element    //h2[text()='CLIENT SAYS']
        Sleep    3
        ${currentClientUrl}=    Get Text    //li[@class='testimonial_content flex-active-slide']//p/span[2]
        Log To Console    ${currentClientUrl}
        Scroll Element Into View    //a[@class='flex-next']
        Sleep    3
        Click Element    //a[@class='flex-next']
        Sleep    3
        ${nextClientUrl}=    Get Text    //li[@class='testimonial_content flex-active-slide']//p/span[2]
        Log To Console    ${nextClientUrl}
        Should Not Be Equal    """${currentClientUrl}"""    """${nextClientUrl}"""

        ${currentClientUrl1}=    Get Text    //li[@class='testimonial_content flex-active-slide']//p/span[2]
        Log To Console    ${currentClientUrl1}
        Click Element    //a[@class='flex-prev']
        Sleep    3
        ${previousClientUrl}=    Get Text    //li[@class='testimonial_content flex-active-slide']//p/span[2]
        Log To Console    ${previousClientUrl}
        Sleep    3
        Should Not Be Equal    """${currentClientUrl1}"""    """${previousClientUrl}"""
        
        Close All Browsers


*** Keywords ***


read_XML_Test_Data
    ${appurl}    pom.Readxml     appurl
    ${browser}    pom.Readxml     browser
    ${FleekTopMenuBars}    pom.Readxml     FleekTopMenuBars
    ${ServicesSubMenuOptions}    pom.Readxml     ServicesSubMenuOptions
    Set Global Variable    ${appurl}
    Set Global Variable    ${browser}
    Set Global Variable    ${FleekTopMenuBars}
    Set Global Variable    ${ServicesSubMenuOptions}
    ${FirstName}    pom.Readxml     FirstName
    ${LastName}    pom.Readxml     LastName
    ${Email}    pom.Readxml     Email
    ${Phone}    pom.Readxml     Phone
    ${Subject}    pom.Readxml     Subject
    ${Message}    pom.Readxml     Message
    Set Global Variable    ${FirstName}
    Set Global Variable    ${LastName}
    Set Global Variable    ${Email}
    Set Global Variable    ${Phone}
    Set Global Variable    ${Subject}
    Set Global Variable    ${Message}


TestCase1_Validation_TC_001

    Wait Until Page Contains Element    xpath://img[@class='mobile']
        Sleep    2
        #   Validate the primary menu bars(dynamic xpath and xml)

        @{FleekTopMenuBars}=     Split String    ${FleekTopMenuBars}    ,

        FOR    ${ele}    IN    @{FleekTopMenuBars}
            Log    ${ele}
            Log To Console    ${ele}
            ${runtimeXpath}=    pom.FleekTopMenuBars     ${ele}
            Wait Until Page Contains Element    ${runtimeXpath}



        END

        #   Mousehover on 'Services' and validate the sublinks

        Mouse Over    //nav[@class='main_menu drop_down right']/ul/li/a/span[text()='Services']
        Sleep    2

        @{ServicesSubMenuOptions}=     Split String    ${ServicesSubMenuOptions}    ,

        FOR    ${ele}    IN    @{ServicesSubMenuOptions}
            Log    ${ele}
            Log To Console    ${ele}
            ${runtimeXpath}=    pom.ServicesSubMenuOptions     ${ele}
            Wait Until Page Contains Element    ${runtimeXpath}
        END

        #Close the browser
        Close All Browsers
        
Fill_ConactUs_Form        
    Input Text    //input[@name='your-name']    ${FirstName}
    Input Text    //input[@name='LastName']    ${LastName}
    Input Text    //input[@name='your-email']    ${Email}
    Input Text    //input[@name='your-phone']    ${Phone}
    Input Text    //input[@name='your-subject']    ${Subject}
    Input Text    //textarea[@name='your-message']    ${Message}


TestCase2_Validation_TC_002
    Wait Until Page Contains Element    //nav[@class='main_menu drop_down right']/ul/li/a/span[text()='Contact Us']
    Sleep    2
    Click Element    //nav[@class='main_menu drop_down right']/ul/li/a/span[text()='Contact Us']
    Sleep    2

    ${runTimeUrl}=      Get Location
    Log To Console    ${runTimeUrl}
    Should Be True    "software-testing-agency-contact" in """${runTimeUrl}"""

    Sleep    2
    Fill_ConactUs_Form
    Sleep    2

    ${netherLandAddress}    Get Text    //h2[text()='THE NETHERLANDS']/following-sibling::p[1]
    Should Be True    "Vijzelstraat 68-78" in """${netherLandAddress}"""
    Should Be True    "1017 HL | Amsterdam" in """${netherLandAddress}"""
    Should Be True    "The Netherlands" in """${netherLandAddress}"""




    Close All Browsers













