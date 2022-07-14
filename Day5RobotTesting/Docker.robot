*** Settings ***
Library     SeleniumLibrary
Library    Dialogs
Library     String

*** Variables ***
${testurl}   https://www.docker.com/
${browser}      Chrome
${gettingStartedUrl}        https://www.docker.com/get-started/
${dockeratomist}        Docker Acquires Atomist
${newWindow}        https://www.docker.com/blog/docker-acquires-atomist/
${twitterWindow}      https://twitter.com/docker


*** Test Cases ***

#Docker_Header_Navigation_TC_01

    #Open Browser     ${testurl}        ${browser}
    #Maximize Browser Window
    #Navigation_TC_01

#Docker_Docker_atomist_Navigation_TC_02
    #Open Browser    ${testurl}      ${browser}
    #Maximize Browser Window
    #Navigation_TC_02

#Docker_Docker_atomist_Navigation_TC_03
    #Open Browser    ${testurl}      ${browser}
    #Maximize Browser Window
    #Navigation_TC_03

#Docker_Docker_atomist_Navigation_TC_04
    #Open Browser    ${testurl}      ${browser}
    #Maximize Browser Window
    #Navigation_TC_04

Docker_Docker_atomist_Navigation_TC_05
    Open Browser    ${testurl}      ${browser}
    Maximize Browser Window
    Navigation_TC_05



















*** Keywords ***



Navigation_TC_01
    #   Validate the docker primary navigation menu


    Wait Until Page Contains Element    xpath://li[@class='logo']/a
    Wait Until Page Contains Element    xpath:(//a[text()='Products'])[1]
    Wait Until Page Contains Element    xpath:(//a[text()='Developers'])[1]
    Wait Until Page Contains Element    xpath:(//a[text()='Pricing'])[1]
    Wait Until Page Contains Element    xpath:(//a[text()='Blog'])[1]
    Wait Until Page Contains Element    xpath:(//a[text()='About Us'])[1]
    Wait Until Page Contains Element    xpath:(//a[text()='Partners'])[1]

    #   Do a mousehover on developers menu

    Mouse Over    xpath:(//a[text()='Developers'])[1]
    Sleep    3
    Click Element    xpath:(//a[text()='Getting started'])[1]
    Sleep    3

    #   Validation getting started page

    ${runtimeurl}=  Get Location
    Log To Console    ${runtimeurl}
    Should Be True    """${gettingStartedUrl}"""=="""${runtimeurl}"""
    Wait Until Page Contains    Get Started with Docker

    #   Go back to Home page

    Go Back
    Sleep    3
    ${runtimeurl}=  Get Location
    Log To Console    ${runtimeurl}
    Should Be True    """${testurl}"""=="""${runtimeurl}"""

    # validate Developers Love Docker in the home page

    Wait Until Page Contains    Developers Love Docker.

    #   close the application
    Close All Browsers


Navigation_TC_02
        #    Validate "Learn more" button, "Docker atomist" Logo and Validate Title "Docker Acquires Atomist"

    Wait Until Page Contains Element    xpath:(//a[text()='Learn more'])[1]
    Wait Until Page Contains Element    xpath://picture[@title='Docker Acquires Atomist']
    #   Validate UI Title "Docker Acquires Atomist"
    ${runtimetitle}=     Get Element Attribute    xpath://span/picture[@title='Docker Acquires Atomist']     title
    Log To Console    ${runtimetitle}
    Should Be True    """${dockeratomist}"""=="""${runtimetitle}"""

    #   Click on "Read now" Link present under Docker Acquires Atomist section
    Click Element    xpath://a[@class='arrow-link arrow']
    Sleep    3

    #   switch to child window
    ${window}=  Switch Window       locator=NEW
    ${runtimeurl}=  Get Location
    Log To Console    ${runtimeurl}
    Should Be True    """${newWindow}"""=="""${runtimeurl}"""

    #   Validate the logo present in the Docker Acquires Atomist window
    Wait Until Page Contains Element    xpath://li[@class='logo']/a

    #   Close "Docker Acquires Atomist" window
    Close Window
    Sleep    2

    #   Close Docker application
    Sleep    3
    Close All Browsers


Navigation_TC_03
     #   Log to console 'developers count'

    ${developerCount}=      Get Text    (//h2[contains(.,'Accelerate how you build')]/../../../div[2]//span)[1]
    Log To Console    ${developerCount}
    Should Be True  "million" in """${developerCount}"""


    ${appCount}=    Get Text    (//h2[contains(.,'Accelerate how you build')]/../../../div[2]//span)[2]
    Log To Console    ${appCount}
    Should Be True  "million" in """${appCount}"""

    ${imgCount}=    Get Text    (//h2[contains(.,'Accelerate how you build')]/../../../div[2]//span)[3]
    Log To Console    ${imgCount}
    Should Be True  "billion" in """${imgCount}"""
    # Close browser
    Sleep    2
    Close Window


Navigation_TC_04

    #   Get all the partnership-image count

    ${patrnerCount}=    Get Element Count    xpath://div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img
    Should Be True    ${patrnerCount}==13

    #   Validate all partnership-image one by one
    ${Bitbucket_Full}=      Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[1]    alt
    Log To Console    ${Bitbucket_Full}
    Should Be True    """${Bitbucket_Full}"""=="""Bitbucket full"""

    ${Circleci_Full}=      Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[2]    alt
    Log To Console    ${Circleci_Full}
    Should Be True    """${Circleci_Full}"""=="""Circleci full"""

    ${Elastic}=      Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[3]    alt
    Log To Console    ${Elastic}
    Should Be True    """${Elastic}"""=="""Elastic"""

    ${Gitlab_Full}=      Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[4]    alt
    Log To Console    ${Gitlab_Full}
    Should Be True    """${Gitlab_Full}"""=="""Gitlab full"""

    ${Jenkins_Logo}=      Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[5]    alt
    Log To Console    ${Jenkins_Logo}
    Should Be True    """${Jenkins_Logo}"""=="""Jenkins logo"""

    ${Jfrog_Full}=      Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[6]    alt
    Log To Console    ${Jfrog_Full}
    Should Be True    """${Jfrog_Full}"""=="""Jfrog full"""

    ${Kubernetes_Full}=      Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[7]    alt
    Log To Console    ${Kubernetes_Full}
    Should Be True    """${Kubernetes_Full}"""=="""Kubernetes full"""

    ${Mongo}=      Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[8]    alt
    Log To Console    ${Mongo}
    Should Be True    """${Mongo}"""=="""Mongo"""

    ${Nginx_Full1}=      Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture)[9]    title
    Log To Console    ${Nginx_Full1}
    Should Be True    """${Nginx_Full1}"""=="""Nginx_Full"""

    ${Octocat_Full}=      Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[10]    alt
    Log To Console    ${Octocat_Full}
    Should Be True    """${Octocat_Full}"""=="""Octocat full"""

    ${Redis_Full}=      Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[11]    alt
    Log To Console    ${Redis_Full}
    Should Be True    """${Redis_Full}"""=="""Redis full"""

    ${Visualstudio_Code-Card}=      Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[12]    alt
    Log To Console    ${Visualstudio_Code-Card}
    Should Be True    """${Visualstudio_Code-Card}"""=="""Visualstudio code card"""

    ${Vmware Tanzu Logo}=      Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[13]    alt
    Log To Console    ${Vmware Tanzu Logo}
    Should Be True    """${Vmware Tanzu Logo}"""=="""Vmwaretanzu logo"""

    Close Window

Navigation_TC_05

    #   Get and match the count of social media connections
    ${socialMedia}=    Get Element Count    xpath://*[@id="footer"]/div[2]/div[1]/div/div/ul/li
    Should Be True    ${socialMedia}==5
    Sleep    2

    #Click on twitter logo and validate the twitter url

    Click Element    xpath://*[@id="footer"]/div[2]/div[1]/div/div/ul/li[2]/a/img
    Sleep    2
    ${window}=  Switch Window       locator=NEW
    ${runtimeurl}=  Get Location
    Log To Console    ${runtimeurl}
    Should Be True    """${twitterWindow}"""=="""${runtimeurl}"""

    #close twitter window
    Close Window

    #close the application
    Close All Browsers





