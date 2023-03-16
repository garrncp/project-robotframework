*** Settings ***
Resource         ${CURDIR}/../resources/web/imports.robot
Test Teardown    common_keywords.Close Store Accounting Website
    

# ตรวจสอบกรณีระบุ Area
*** Test Cases ***
search data input area
    [Tags]               search_data
    [Documentation]      search data input area

    common_feature.Open Store Accounting Website and go to home page     ${user['username']}      ${user['password']}     ${module['store_audit']}    ${menu['sam_6200']}          
    home_feature.Clear data infomation field
    home_page.Input date from    ${tc_01['date_from']}
    home_page.Input date to    ${tc_02['date_to']} 
    home_page.Input area    ${tc_01['area']}
    Select check all status and verify
    home_page.Click search button
