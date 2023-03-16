*** Settings ***
Resource         ${CURDIR}/../resources/web/imports.robot
Test Teardown    common_keywords.Close Store Accounting Website
    

# ตรวจสอบกรณีระบุทุก Criteria
*** Test Cases ***
search data not input data infomation field
    [Tags]               search_data
    [Documentation]      search data not input data infomation field

    common_feature.Open Store Accounting Website and go to home page     ${user['username']}      ${user['password']}     ${module['store_audit']}    ${menu['sam_6200']}          
    home_feature.Clear data infomation field
    home_page.Input date from    ${tc_01['date_from']}
    home_page.Input date to    ${tc_01['date_to']} 
    home_page.Input area    ${tc_01['area']},${tc_02['area']}
    home_page.Input branch    ${tc_01['store']},${tc_02['store']},${tc_03['store']},${tc_04['store']},${tc_05['store']}
    home_page.Verify kundsan can be check
    home_page.Verify Exta can be check
    home_page.Verify status import can be check
    home_page.Verify status Invalid data can be check
    home_page.Verify status audit accountant can be check
    home_page.Verify counting normal can be check
    home_page.Verify counting sampling can be check
    home_page.Click search button
    
