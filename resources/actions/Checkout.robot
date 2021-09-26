*Settings*
Documentation    Checkout Action

*Keywords*
Checkout With
    [Arguments]    ${firstName}                        ${lastName}      ${zipCode}
    Fill Text      xpath=//input[@id='first-name']     ${firstName} 
    Fill Text      xpath=//input[@id='last-name']      ${lastName}
    Fill Text      xpath=//input[@id='postal-code']    ${zipCode}
    Click          xpath=//input[@id='continue']

Go to cart
    Click    xpath=//a[@class='shopping_cart_link']

Go to checkout form
    Go to cart 
    Click          xpath=//button[@id='checkout']

Confirm checkout
    Click    xpath=//button[@id='finish']
    Take Screenshot

Cancel checkout
    Click    xpath=//button[@id='cancel']

Check order confirmation
    Wait For Elements State    xpath=//h2[text()='THANK YOU FOR YOUR ORDER']
    Take Screenshot

Back to product list
    Click    xpath=//button[@id='back-to-products']
