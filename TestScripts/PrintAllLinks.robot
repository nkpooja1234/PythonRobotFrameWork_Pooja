*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${linksName}    Machine Learning with TensorFlow on Google Cloud Platform

*** Test Cases ***

Print_All_Links

    Open Browser    https://techedtrainings.com/courses/    Chrome
    Sleep    2
    Maximize Browser Window
    Sleep    2
    ${allLinksCount}=   Get Element Count    xpath://a
    Log To Console    ${allLinksCount}
    Should Be True    ${allLinksCount}==156

    #Do print all the links

    ${all_links}=   Get WebElements    xpath://a
    FOR    ${el1}    IN    @{all_links}
        ${my_runtimelinks}     Get Text    ${el1}
        Log To Console    ${my_runtimelinks}
        Exit For Loop If    """${linksName}"""=="""${my_runtimelinks}"""



    END
    Close All Browsers

*** Keywords ***