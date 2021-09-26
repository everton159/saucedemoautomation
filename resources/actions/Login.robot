*Settings*
Documentation    Login Action

*Keywords*
Login With
    [Arguments]    ${user}                              ${password}
    Fill Text      xpath=//input[@id='user-name']       ${user} 
    Fill Text      xpath=//input[@id='password']        ${password}
    Click          xpath=//input[@id='login-button']

User should be logged
    Wait For Elements State    xpath=//span[text()='Products']    visible    5    Login error
    Take Screenshot

