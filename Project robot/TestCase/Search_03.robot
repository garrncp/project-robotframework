*** Settings ***
Resource         ${CURDIR}/../resources/web/imports.robot
Test Teardown    common_keywords.Close Store Accounting Website
    

# ตรวจสอบกรณีระบุวันที่ตรวจนับ
*** Test Cases ***
search data input data infomation field
    [Tags]               search_data
    [Documentation]      search data input data infomation field

    common_feature.Open Store Accounting Website and go to home page     ${user['username']}      ${user['password']}     ${module['store_audit']}    ${menu['sam_6200']}          
    home_feature.Clear data infomation field
    home_page.Input date from    ${tc_01['date_from']}
    home_page.Input date to    ${tc_02['date_to']} 
    Select check all status and verify
    home_page.Click search button
