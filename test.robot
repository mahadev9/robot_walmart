*** Settings ***
Library           SeleniumLibrary
Library    .venv/lib/python3.10/site-packages/robot/libraries/Screenshot.py

*** Variables ***
${URL}           https://walmart.wd5.myworkdayjobs.com/en-US/WalmartExternal/userHome
${BROWSER}       Chrome
${USERNAME}      mmaitri@udel.edu
${PASSWORD}      xajxyp-Birxit-9vicve

*** Test Cases ***
Login
    Open Browser    ${URL}    ${BROWSER}
    Sleep    2
    Wait Until Page Contains Element    //input[@data-automation-id="email"]  30
    Wait Until Element Is Enabled    //input[@data-automation-id="email"]     30
    Input Text      //input[@data-automation-id="email"]      ${USERNAME}
    Input Text      //input[@data-automation-id="password"]     ${PASSWORD}
    Click Element    //button[@data-automation-id="signInSubmitButton"]/../.

Click on My Tasks
    Wait Until Page Contains Element      //a[@data-automation-id="taskButton"]     30
    Wait Until Element Is Enabled     //a[@data-automation-id="taskButton"]     30
    Click Element    //a[@data-automation-id="taskButton"]

Fill Tasks Page
    Wait Until Page Contains Element      //textarea[@data-automation-id="textAreaField"]     30
    Wait Until Element Is Enabled     //textarea[@data-automation-id="textAreaField"]     30
    ${inputEle}=    Get WebElements     //textarea[@data-automation-id="textAreaField"]
    Input Text    ${inputEle}[0]    Mahadev Mahesh
    Input Text    ${inputEle}[1]    Maitri
    Input Text    ${inputEle}[2]    mmaitri@udel.edu
    Input Text    ${inputEle}[3]    India
    Input Text    ${inputEle}[4]    United States of America
    Input Text    ${inputEle}[5]    India
    Input Text    ${inputEle}[6]    Masters Degree
    Input Text    ${inputEle}[7]    F1 OPT and F1 STEM OPT
    Input Text    ${inputEle}[8]    0
    Execute Javascript    window.scrollBy(0,-200)
    Click Element    //div[@data-automation-id="checkbox"]/label[text()='F-1']
    Execute Javascript    window.scrollBy(0,-500)
    ${selectEle}=    Get WebElements    //div[@data-automation-id="selectShowAll"]
    Click Element    ${selectEle}[0]
    Sleep    1
    ${menuEle}=    Get WebElements    //div[@data-automation-id="promptOption"]
    Wait Until Element Is Enabled    ${menuEle}[2]    30
    Click Element    ${menuEle}[2]
    Sleep    1
    Input Text    //label[contains(text(),'If Yes, what was your field of study?')]/../..//textarea    Electronics and Communication Engineering, Bachelor \nComputer Science, Master
    Scroll Element Into View    ${selectEle}[1]
    Click Element    ${selectEle}[1]
    Sleep    1
    ${menuEle}=    Get WebElements    //div[@data-automation-id="promptOption"]
    Wait Until Element Is Enabled    ${menuEle}[3]    30
    Click Element    ${menuEle}[3]
    Scroll Element Into View    ${selectEle}[2]
    Click Element    ${selectEle}[2]
    Sleep    1
    ${menuEle}=    Get WebElements    //div[@data-automation-id="promptOption"]
    Wait Until Element Is Enabled    ${menuEle}[2]    30
    Click Element    ${menuEle}[2]
    Scroll Element Into View    ${selectEle}[3]
    Execute Javascript    window.scrollBy(0,400)
    Click Element    ${selectEle}[3]
    Sleep    1
    ${menuEle}=    Get WebElements    //div[@data-automation-id="promptOption"]
    Wait Until Element Is Enabled    ${menuEle}[3]    30
    Click Element    ${menuEle}[3]
    Scroll Element Into View    ${selectEle}[4]
    Click Element    ${selectEle}[4]
    Sleep    1
    ${menuEle}=    Get WebElements    //div[@data-automation-id="promptOption"]
    Wait Until Element Is Enabled    ${menuEle}[3]    30
    Click Element    ${menuEle}[3]
    Scroll Element Into View    ${selectEle}[5]
    Execute Javascript    window.scrollBy(0,400)
    Click Element    ${selectEle}[5]
    Sleep    1
    ${menuEle}=    Get WebElements    //div[@data-automation-id="promptOption"]
    Wait Until Element Is Enabled    ${menuEle}[3]    30
    Click Element    ${menuEle}[3]
    Scroll Element Into View    ${selectEle}[6]
    Click Element    ${selectEle}[6]
    Sleep    1
    ${menuEle}=    Get WebElements    //div[@data-automation-id="promptOption"]
    Wait Until Element Is Enabled    ${menuEle}[3]    30
    Click Element    ${menuEle}[3]
    Scroll Element Into View    ${selectEle}[7]
    Execute Javascript    window.scrollBy(0,400)
    Click Element    ${selectEle}[7]
    Sleep    1
    ${menuEle}=    Get WebElements    //div[@data-automation-id="promptOption"]
    Wait Until Element Is Enabled    ${menuEle}[3]    30
    Click Element    ${menuEle}[3]
    Scroll Element Into View    ${selectEle}[8]
    Click Element    ${selectEle}[8]
    Sleep    1
    ${menuEle}=    Get WebElements    //div[@data-automation-id="promptOption"]
    Wait Until Element Is Enabled    ${menuEle}[3]    30
    Click Element    ${menuEle}[3]
    Scroll Element Into View    ${selectEle}[9]
    Execute Javascript    window.scrollBy(0,400)
    Click Element    ${selectEle}[9]
    Sleep    1
    ${menuEle}=    Get WebElements    //div[@data-automation-id="promptOption"]
    Wait Until Element Is Enabled    ${menuEle}[3]    30
    Click Element    ${menuEle}[3]
    ${dayEle}=    Get WebElements    //input[@data-automation-id="dateSectionDay-input"]
    ${monthEle}=    Get WebElements    //input[@data-automation-id="dateSectionMonth-input"]
    ${yearEle}=    Get WebElements    //input[@data-automation-id="dateSectionYear-input"]
    Scroll Element Into View    ${dayEle}[0]
    Execute Javascript    window.scrollBy(0,-400)
    Input Text    ${monthEle}[0]    07
    Input Text    ${dayEle}[0]    20
    Input Text    ${yearEle}[0]    2027
    Scroll Element Into View    ${dayEle}[1]
    Execute Javascript    window.scrollBy(0,400)
    Input Text    ${monthEle}[1]    07
    Input Text    ${dayEle}[1]    13
    Input Text    ${yearEle}[1]    2022
    Sleep    1
    Click Element    //button[@data-automation-id="wd-CommandButton_uic_okButton"]
    Sleep    5
