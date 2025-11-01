*** Settings ***
Documentation     YouTube search using WebDriverManager
Library           SeleniumLibrary
Library           OperatingSystem

*** Variables ***
${URL}            https://www.youtube.com
${SEARCH_TEXT}    Mobile Automation

*** Test Cases ***
Open YouTube With WebDriverManager
    ${chrome_driver}=    Evaluate    __import__('webdriver_manager.chrome').ChromeDriverManager().install()    modules=webdriver_manager.chrome
    Open Browser    ${URL}    chrome    executable_path=${chrome_driver}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//input[@id='search']
    Input Text    xpath=//input[@id='search']    ${SEARCH_TEXT}
    Press Keys    xpath=//input[@id='search']    ENTER
    Wait Until Page Contains    ${SEARCH_TEXT}
    Sleep    3s
    Close Browser