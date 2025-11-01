*** Settings ***
# Documentation     Example Robot Framework test to open Google and search something
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.google.com
${SEARCH_TEXT}    Robot Framework tutorial

*** Test Cases ***
Open Google And Search
    [Documentation]    This test opens Google, searches for a keyword, and verifies results
    Open Browser    ${URL}    ${BROWSER}
    Input Text      name=q    ${SEARCH_TEXT}
    Press Keys      name=q    ENTER
    Wait Until Page Contains    Robot Framework
    Close Browser