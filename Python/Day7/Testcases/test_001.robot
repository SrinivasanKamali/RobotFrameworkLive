*** Settings ***
Resource   ../Resources/locators_1.py
Resource   ../Resources/libraries.robot
Resource   ../Resources/variables.robot
Resource   ../Resources/keywords.robot
Library    ../Resources/Data/dataval.py

Suite Setup         Log To Console      Browser opened
Suite Teardown      Log To Console      Browser closed
Test Setup          Log To Console      Testing started
Test Teardown       Log To Console      Testing Completed
*** Test Cases ***
TC001_Login with valid credentials
    Open Browser and enter valid details    ${url}      ${browser}
    Enter the information   ${user_val}  ${pass_val}   ${title_val}
    search the python library   ${url1}  ${search_txt}  ${link_val}  ${ENTER}  ${title_val}
    create a file and save details  ${path}    ${file_val}
    Get current time and date

