*** Settings ***
Resource   ../Resources/locators.py
#Variables     test.txt
Resource   ../Resources/libraries.robot
Resource   ../Resources/variables.robot
Resource   ../Resources/keywords.robot
Library    ../Resources/Data/dataval.py

*** Test Cases ***
TC001_Checking the testing application with valid data
    Open Browser and enter valid details   ${url}      ${browser}
    ${total_row}=   dataval.Get Total Rows  ${file}   ${sheet}
    #${end}=     Evaluate    ${total_row} + 1
    #slog to console  ${end}
    FOR     ${i}  IN RANGE  0   ${total_row}
    ${name_val}=       dataval.Get Row    ${file}    ${sheet}    ${i}    name
    ${email_val}=      dataval.Get Row    ${file}    ${sheet}    ${i}    email
    ${cell}=           dataval.Get Row    ${file}    ${sheet}    ${i}    cell
    ${address_val}=    dataval.Get Row    ${file}    ${sheet}    ${i}    address
    ${title_val}=      dataval.Get Row    ${file}    ${sheet}    ${i}    title
    #${days_val}=       dataval.Get Row    ${file}    ${sheet}    ${i}    lname
    #${gender_val}=     dataval.Get Row    ${file}    ${sheet}    ${i}    gender
    ${country_val}=    dataval.Get Row    ${file}    ${sheet}    ${i}    country
    ${colors_val}=     dataval.Get Row    ${file}    ${sheet}    ${i}    colors
    ${list_val}=       dataval.Get Row    ${file}    ${sheet}    ${i}    animals
    ${date1}=          dataval.Get Row    ${file}    ${sheet}    ${i}    date1
    ${date2}=          dataval.Get Row    ${file}    ${sheet}    ${i}    date2
    ${fromdate}=       dataval.Get Row    ${file}    ${sheet}    ${i}    from
    ${todate}=        dataval.Get Row    ${file}    ${sheet}    ${i}    to
    ${file1_msg}=      dataval.Get Row    ${file}    ${sheet}    ${i}    msg1
    ${file2_msg}=      dataval.Get Row    ${file}    ${sheet}    ${i}    msg2
    Enter the information   ${name_val}  ${title_val}  ${email_val}   ${cell}   ${address_val}  ${country_val}  ${colors_val}   ${list_val}  ${date1}   ${date2}  ${fromdate}    ${todate}
    Uploading the documents and getting table values   ${file1_val}  ${file2_val}  ${file1_msg}   ${file2_msg}
    END
TC003_Reading the table values
    Reading the table values    ${path}
TC004_Handling the alerts and mouse actions
    Handling Alerts And mouse Actions
    New Tab and window
    Mouse Actions
TC005_Handling the SVG and linnks
    SVG Elements
    Links and Broken Links
TC006_Handling the broken links
    Broken Links    ${url}