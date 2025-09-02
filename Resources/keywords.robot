*** Settings ***
Variables       ../Resources/locators.py
Resource   ../Resources/libraries.robot
*** Keywords ***
Open Browser and enter valid details
    [Arguments]     ${url}      ${browser}
    open browser    ${url}      ${browser}
    maximize browser window

Enter the information
    [Arguments]  ${name_val}  ${title_val}  ${email_val}   ${cell}   ${address_val}  ${gender_val}   ${country_val}  ${colors_val}   ${list_val}  ${date1}   ${date2}  ${fromdate}    ${enddate}
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
    Run Keyword And Continue On Failure     Select Radio Button  ${gender}  ${gender_val}
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
    Run Keyword And Continue On Failure     Input Text   ${datepicker1}     ${date1}
    Wait Until Element Is Visible   ${datepicker2}  ${time}
    Run Keyword And Continue On Failure     Input Text   ${datepicker2}     ${date2}
    Wait Until Element Is Visible   ${startdate}  ${time}
    Run Keyword And Continue On Failure     Input Text   ${startdate}     ${fromdate}
    Wait Until Element Is Visible   ${enddate}  ${time}
    Run Keyword And Continue On Failure     Input Text   ${enddate}     ${enddate}
    Wait Until Element Is Visible   ${submit_btn}  ${time}
    Run Keyword And Continue On Failure     Click Button  ${submit_btn}

Uploading the documents and getting table values
    [Arguments]  ${file1_val}  ${file2_val}  ${file1_msg}   ${file2_msg}
    Wait Until Element Is Visible   ${file1_val}   ${time}
    Choose File   ${file1_data}   ${file1_val}
    ${msg_1}=   Get Text  ${success_msg1}
    ${file_sts} =   Run Keyword And Return Status  Should Be equal  ${msg_1}   ${file1_msg}
    IF ${file_sts}
    Log to console      sucesss
    ELSE
    Run Keyword And Continue On Failure
    Fail    Notmatching
    END
    Wait Until Element Is Visible   ${file2_data}   ${time}
    Choose File   ${file2_data}   ${file2_val}
    ${msg_2}=   Get Text  ${success_msg2}
    ${file_sts1} =   Run Keyword And Return Status  Should Be equal  ${msg_2}   ${file2_msg}
    IF ${file_sts1}
    Log to console      sucesss
    ELSE
    Run Keyword And Continue On Failure
    Fail    Notmatching
    END
Reading the table values
    [Arguments]  ${path}
    Create File     ${path}
    ${tb_val}=  Get Webelements     ${table}
    FOR ${i}  IN    @{tb_val}
    ${txt}=     Get Text    ${i}
    Append To File      ${txt}
    END
    ${tb_val_1}=  Get Webelements     ${dynamic_table}
    FOR ${i}  IN    @{tb_val_1}
    ${txt_1}=     Get Text    ${i}
    Append To File      ${txt_1}
    END
Handling Alerts And mouse Actions
    Wait Until Element Is Visible   ${starttostop}   ${time}
    Run Keyword And Continue On Failure      Click Element   ${starttostop}
    Wait Until Element Is Visible   ${alert1}   ${time}
    Run Keyword And Continue On Failure     Handle Alert    Accept    ${alert1}
    Wait Until Element Is Visible   ${alert2}   ${time}
    Run Keyword And Continue On Failure     Handle Alert    Accept    ${alert2}
    Wait Until Element Is Visible   ${alert3}   ${time}
    Run Keyword And Continue On Failure     Handle Alert    Accept    ${alert3}

New Tab and window
    Wait Until Element Is Visible   ${newtab}   ${time}
    Run Keyword And Continue On Failure      Click Element   ${newtab}
    Switch Window  NEW
    ${new_val}= Get Title
    Log to Console       ${new_val}
    Switch Window   MAIN
    Wait Until Element Is Visible   ${newbrowser}   ${time}
    Run Keyword And Continue On Failure      Click Element   ${newbrowser}
    Switch Browser      New
    ${loc}=     Get Locations
    Log to concole      ${loc}
    close browser











