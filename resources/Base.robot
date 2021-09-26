*Settings*
Documentation   Base structure to import

Library     Browser
Library     Collections
Resource    actions/Components.robot
Resource    actions/Login.robot
Resource    actions/Checkout.robot
Resource    actions/Products.robot

*Variables
${browser}      chromium
${headless}     False
${URL}          https://www.saucedemo.com/

*Keywords*
Start Session
    New Browser  ${browser}  ${headless}
    New Page    ${URL}

Finish Test
     Take Screenshot

Take Screenshot and Logout
    Take Screenshot
    Logout App

Go to home page
    Start Session
    Login With  standard_user  secret_sauce

Go to checkout page
    Start Session
    Login With  standard_user  secret_sauce
    Go to checkout form
