*** Settings ***
Documentation    This Open the Youtube and search for matplotlib 
Library    SeleniumLibrary 

*** Variables ***
${URL}            https://youtube.com
${BROWSER}        chrome
${SEARCH_TERM}    matplotlib in python

*** Test Cases ***
Open YouTube And Search For Video
    [Documentation]    This test demonstrate the matplotlib
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    name=search_query    ${BROWSER}
    Press Keys    name=search_query    RETURN
    Close Browser
    
