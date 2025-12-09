*** Settings ***
Variables       ../Resources/locators_1.py
Resource   ../Resources/libraries.robot

*** Keywords ***
Open Browser and enter valid details
    [Arguments]     ${url}      ${browser}
    open browser    ${url}      ${browser}
    maximize browser window

Enter the information
    [Arguments]  ${user_val}  ${pass_val}   ${title_val}
    Log     Test Execution Started
    Wait Until Element Is Visible   ${name}    ${time}
    Run Keyword And Continue On Failure     Input Text  ${name}   ${user_val}
    Wait Until Element Is Visible   ${password}    ${time}
    Run Keyword And Continue On Failure     Input Text  ${password}   ${pass_val}
    Wait Until Element Is Visible   ${button}    ${time}
    Run Keyword And Continue On Failure     click element  ${button}
    sleep  2s
    Log     Wait Completed
    ${title}=   Get Title
    Log to console  ${title}
    ${sts}=     Run Keyword And Return Status   Should Be Equal     ${title}    ${title_val}
    IF  ${sts}
    Log to console      Matched!!!!
    ELSE
    Run Keyword And Continue On Failure
    Fail   Failed!!!
    END

search the python library
    [Arguments]  ${url1}  ${search_txt}  ${link_val}  ${ENTER}  ${title_val}
    Execute JavaScript      window.open("${url1}", "_blank");
    sleep   3s
    Switch Window   NEW
    Wait Until Element Is Visible   ${search}   ${time}
    Input Text     ${search}   ${search_txt}
    Press Keys     ${search}     ${ENTER}
    sleep       3s
    Wait Until Element Is Visible      ${links}    ${time}
    ${links1}=   Get WebElements     ${links}
    FOR  ${i}  IN  @{links1}
        ${url_list}=    Get Element Attribute    ${i}    href
        ${txt}=         Get Text                 ${i}
        Log To Console  URL: ${url_list}
        Log To Console  TEXT: ${txt}

        IF    '${url_list}' == '${link_val}'
            Click Element    ${i}
            Exit For Loop
        ELSE
            Log To Console    No match found
            Run Keyword And Continue On Failure    Log To Console    Failed errorfacing
        END
    END
    ${title1}=   Get Title
    Log to console  ${title1}
    ${sts1}=     Run Keyword And Return Status   Should Be Equal     ${title1}    ${title_val1}
    IF  ${sts1}
    Log to console      pyhton title Matched!!!!
    ELSE
    Run Keyword And Continue On Failure
    Fail   Failed!!!
    END
    Capture Page Screenshot     success.png

create a file and save details
    [Arguments]  ${path}    ${file_val}
    create file  ${path}    ${file_val}
    Log     File Created:${path}
    File Should Exist   ${path}
    ${val}=     Get File    ${path}
    Log     The file content :${val}


Get current time and date
    ${time}=    Get Current Date    result_format=%d/%m/%Y
    Log     The current time:${time}
    Log to console      ${time}
    ${day}=     Get Current Date    result_format=%d
    ${month}=   Get Current Date    result_format=%m
    ${year}=    Get Current Date    result_format=%Y
    ${year1}=   Get Current Date    result_format=%y

    Log     The current day:${day}
    Log     The Current month:${month}
    Log     The Current year:${year}
    Log to console       ${day}${month}${year}

    ${future_date}=     Add Time To Date  ${time}   15 days     date_format=%d/%m/%Y    result_format=%d/%m/%Y %H:%M:%S
    Log     The Future date :${future_date}
    Log to console  ${future_date}




