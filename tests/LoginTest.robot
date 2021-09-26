*Settings*
Documentation    Login Test Suite

Resource         ${EXECDIR}/resources/Base.robot
Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*
Login with a valid user
    Login With               standard_user                 secret_sauce
    User should be logged
    [Teardown]               Take Screenshot and Logout

Login with locked user
    Login With             locked_out_user                                        secret_sauce
    Alert text shoud be    Epic sadface: Sorry, this user has been locked out.

Validate required fields
    Login With             ${EMPTY}                              ${EMPTY}
    Alert text shoud be    Epic sadface: Username is required
    Login With             ${EMPTY}                              password
    Alert text shoud be    Epic sadface: Username is required
    Login With             user                                  ${EMPTY}
    Alert text shoud be    Epic sadface: Password is required
