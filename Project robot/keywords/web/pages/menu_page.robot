*** Variables ***
${menu_page.menu_name}           xpath=//span[contains(text(), '{label}')]
${menu_home}                     xpath=//a[@href="/StoreAcct/common/MainMenu/MainMenuSA.faces"]



*** Keywords ***
Click menu 
    [Documentation]     Click menu by locator
    [Arguments]     ${menu}
    ${locator}      String.Replace string           ${menu_page.menu_name}     {label}      ${menu}
    
    SeleniumLibrary.Click Element    ${locator}


Click home
    [Documentation]     Click menu home
    
    SeleniumLibrary.Click Element    ${menuhome}

