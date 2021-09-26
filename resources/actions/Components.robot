*Settings*
Documentation     Shared Elements

*Keywords*
Alert text shoud be
    [Arguments]                ${message}
    ${element}                 Set Variable        xpath=//h3[text()='${message}']
    Wait For Elements State    ${element}         visible     5     error message not found
    Get Text                   ${element}         equal     ${message}
    Take Screenshot

Logout App
    Click       xpath=//button[@id='react-burger-menu-btn']
    Click       xpath=//a[@id='logout_sidebar_link']

Reset App
    Click       xpath=//button[@id='react-burger-menu-btn']
    Click       xpath=//a[@id='reset_sidebar_link']


