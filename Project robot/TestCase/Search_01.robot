*** Settings ***
Resource         ${CURDIR}/../resources/web/imports.robot
Test Teardown    common_keywords.Close Store Accounting Website
    


*** Test Cases ***
search data not input data infomation field
    [Tags]               search_data
    [Documentation]      search data not input data infomation field

    common_feature.Open Store Accounting Website and go to home page     ${user['username']}      ${user['password']}     ${module['store_audit']}    ${menu['sam_6200']}          
    