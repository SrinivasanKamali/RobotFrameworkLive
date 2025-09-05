*** Settings ***
Variables       ../Resources/locators.py
#Variables     test.txt
Resource   ../Resources/libraries.robot
*** Keywords ***
Open Browser and enter valid details
    [Arguments]     ${url}      ${browser}
    open browser    ${url}      ${browser}
    maximize browser window

Enter the information
    [Arguments]  ${name_val}  ${title_val}  ${email_val}   ${cell}   ${address_val}   ${country_val}  ${colors_val}   ${list_val}  ${date1}   ${date2}  ${fromdate}    ${todate}
    ${title}=   Get Title
    Log to console  ${title}
    ${sts}=     Run Keyword And Return Status   Should Be Equal     ${title}    ${title_val}
    IF  ${sts}
    Log to console      Matched!!!!
    ELSE
    Run Keyword And Continue On Failure
    Fail   Failed!!!
    END
    Log to console   ${name}
    Wait Until Element Is Visible   ${name}    ${time}
    Run Keyword And Continue On Failure     Input Text  ${name}   ${name_val}
    Wait Until Element Is Visible   ${email}    ${time}
    Run Keyword And Continue On Failure     Input Text  ${email}   ${email_val}
    Wait Until Element Is Visible   ${phone}    ${time}
    Run Keyword And Continue On Failure     Input Text  ${phone}   ${cell}
    Wait Until Element Is Visible   ${textarea}    ${time}
    Run Keyword And Continue On Failure     Input Text  ${textarea}   ${address_val}
    #Run Keyword And Continue On Failure     Select Radio Button  ${gender}  ${gender_val}
    Run Keyword And Continue On Failure     Click Element  ${gender}

    ${list}=    Get Webelements     ${days_checkbox}
    FOR     ${i}    IN  @{list}
    Select Checkbox     ${i}
    END
    Wait Until Element Is Visible   ${country}  ${time}
    Run Keyword And Continue On Failure     Select From List By Label    ${country}     ${country_val}
    Wait Until Element Is Visible   ${colors}  ${time}
    Run Keyword And Continue On Failure     Select From List By Label    ${colors}     ${colors_val}
    Wait Until Element Is Visible   ${animalslist}  ${time}
    Run Keyword And Continue On Failure     Select From List By Label    ${animalslist}     ${list_val}
    Wait Until Element Is Visible   ${datepicker1}  ${time}
    #Run Keyword And Continue On Failure     Input Text   ${datepicker1}     ${date1}
    #Press Keys    ${datepicker1}    \\13
    #Press Keys    NONE             \\13
    Execute JavaScript    document.getElementById("datepicker").value = "${date1}"

    #Execute JavaScript    document.getElementById("datepicker1").value = "${date1}"
    #Execute JavaScript    document.getElementById("datepicker1").dispatchEvent(new Event('change'))
    Execute JavaScript    document.getElementById("txtDate").value = "${date2}"
    #Wait Until Element Is Visible   ${datepicker2}  ${time}
    #Run Keyword And Continue On Failure     Input Text   ${datepicker2}     ${date2}
    Wait Until Element Is Visible   ${startdate}  ${time}
    Run Keyword And Continue On Failure     Input Text   ${startdate}     ${fromdate}
    Wait Until Element Is Visible   ${enddate}  ${time}
    Run Keyword And Continue On Failure     Input Text   ${enddate}     ${todate}
    Wait Until Element Is Visible   ${submit_btn}  ${time}
    Run Keyword And Continue On Failure     Click Button  ${submit_btn}

Uploading the documents and getting table values
    [Arguments]  ${file1_val}  ${file2_val}  ${file1_msg}   ${file2_msg}
    Wait Until Element Is Visible   ${file1_data}   ${time}
    Choose File   ${file1_data}   ${file1_val}
    Wait Until Element Is Visible   ${upload_fiele}   ${time}
    Click Element   ${upload_fiele}
    Wait Until Element Is Visible   ${success_msg1}   ${time}
    ${msg_1}=   Get Text    ${success_msg1}
    Log to console      ${msg_1}
    ${file_sts} =   Run Keyword And Return Status  Should Be equal      ${msg_1}   ${file1_msg}
    Log to console      ${file1_msg}
    Log to console      ${file_sts}
    IF  ${file_sts}
    Log to console      sucesss
    ELSE
    Run Keyword And Continue On Failure     Log to console      Fail but run
    Fail    Notmatching
    END
    Wait Until Element Is Visible   ${file2_data}   ${time}
    Choose File   ${file2_data}   ${file2_val}
    Wait Until Element Is Visible   ${upload_file2}   ${time}
    Click Element   ${upload_file2}
    Wait Until Element Is Visible   ${success_msg2}   ${time}
    ${msg_2}=   Get Text  ${success_msg2}
    Log to console      ${msg_2}
    Log to console      ${file2_msg}
    ${file_sts1} =   Run Keyword And Return Status  Should Be equal  ${msg_2}   ${file2_msg}
    IF  ${file_sts1}
    Log to console      sucesss
    ELSE
    Run Keyword And Continue On Failure   Log to console      Fail but run
    Fail    Notmatching
    END
Reading the table values
    [Arguments]  ${path}
    Create File     ${path}
    ${tb_val}=  Get Webelements     ${table}
    FOR     ${i}  IN    @{tb_val}
    ${txt}=     Get Text    ${i}
    Append To File   ${path}   ${txt}\n
    END
    ${tb_val_1}=  Get Webelements     ${dynamic_table}
    FOR     ${i}  IN    @{tb_val_1}
    ${txt_1}=     Get Text    ${i}
    Append To File      ${path}    ${txt_1}\n
    END
Handling Alerts And mouse Actions
    Wait Until Element Is Visible   ${starttostop}   ${time}
    Run Keyword And Continue On Failure      Click Element   ${starttostop}
    Wait Until Element Is Visible   ${alert1}   ${time}
    Run Keyword And Continue On Failure     Click Element   ${alert1}
    Handle Alert    Accept
    Wait Until Element Is Visible   ${alert2}   ${time}
    Run Keyword And Continue On Failure     Click Element   ${alert2}
    Handle Alert    Accept
    Wait Until Element Is Visible   ${alert3}   ${time}
    Run Keyword And Continue On Failure     Click Element   ${alert3}
    Handle Alert    Accept

New Tab and window
    Wait Until Element Is Visible   ${newtab}   ${time}
    Run Keyword And Continue On Failure      Click Element   ${newtab}
    Switch Window  NEW
    #Wait Until Element Is Visible   ${newtab}   ${time}
    ${new_val}=     Get Title
    Log to Console       ${new_val}
    close window
    Switch Window   MAIN
Windows handling
    Wait Until Element Is Visible   ${newbrowser}   ${time}
    ${handles_before}=    Get Window Handles
    Run Keyword And Continue On Failure      Click Element   ${newbrowser}
    sleep   3s
    ${handles_before}=    Get Window Handles
#    ${main_handle}=    Set Variable    ${handles_before}[0]
    ${all_handles}=    Get Window Handles
    ${main_handle}=    Get From List    ${handles_before}    0
    Log To Console    Main window handle: ${main_handle}
    Log To Console    All window handles: ${all_handles}
    FOR    ${handle}    IN    @{all_handles}
    sleep   2s
    Run Keyword If    '${handle}' != '${main_handle}'    Switch Window    handle=${handle}
    END
    Log To Console    Switched to popup: ${handle}
    Close Window
    #Switch Window    handle=${main_handle}

Mouse Actions
    Wait Until Element Is Visible   ${mouseover}   ${time}
    Mouse Over         ${mouseover}
    Wait Until Element Is Visible   ${doubleclick}   ${time}
    Double Click Element   ${doubleclick}
    Drag And Drop  ${drag}  ${drop}
    Drag And Drop By Offset     ${slide}    50     0
SVG Elements
    ${list_svg1}=    Get Element Attribute  ${svg}  fill
    Log To Console    ${list_svg1}
    ${list_svg2}=    Get Element Attribute  ${rects}  fill
    Log To Console    ${list_svg2}
    ${list_svg3}=    Get Element Attribute  ${ovals}  fill
    Log To Console    ${list_svg3}
    click Element   ${dropdown}
    ${drop_val}=    Get Webelements  ${dropdown_list1}
    FOR  ${i}  IN  @{drop_val}
    ${text3}=  Get Text  ${i}
        IF  '${text3}' == '${drp_1}'
            Click Element  ${i}
        END
    END

Links and Broken Links
    ${list_link}=  Get Webelements      ${links_text}
    FOR  ${i}  IN   @{list_link}
    ${text_link}=   Get Text    ${i}
    Log To Console    ${text_link}
    END

    ${list_a}=  Get Webelements         ${links_text_a}
    FOR  ${i}   IN      @{list_a}
    ${text_a}=  Get Text  ${i}
    click link  ${i}
    GO Back
    Log TO Console   ${text_a}
    END

Broken Links
    [Arguments]    ${url}
    Wait Until Element Is Visible   ${broken_link}   ${time}
    ${broken_links}=    Get WebElements    ${broken_link}
    Create Session    site    ${url}
    FOR    ${link}    IN    @{broken_links}
        ${href}=    Get Element Attribute    ${link}    href
        Run Keyword If    '${href}'.startswith('http')    Click Link    ${href}
        Go Back
    END

    ${response}=    GET On Session    site    ${url}
    ${status}=      Set Variable    ${response.status_code}
    Run Keyword If    ${status} >= 400    Log To Console    Broken Link: ${url} (Status: ${status})
    ...    ELSE    Log To Console   OK: ${url} (Status: ${status})




