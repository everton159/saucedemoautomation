*Settings*
Documentation    Checkout Test Suite

Resource         ${EXECDIR}/resources/Base.robot
Suite Setup      Go to home page
Test Setup       Go to checkout form
Test Teardown    Finish Test

*Test Cases*
Test successful checkout
    Checkout With    Everton                                   Santos    00000280
    Confirm checkout
    Check order confirmation
    Back to product list

Test required fields
    Checkout With          ${empty}                                  ${empty}    ${empty}
    Alert text shoud be    Error: First Name is required
    Checkout With          Everton                                   ${empty}    ${empty}
    Alert text shoud be    Error: Last Name is required
    Checkout With          Everton                                   Santos      ${empty}
    Alert text shoud be    Error: Postal Code is required

Test cancel checkout
    Checkout With    Everton                                   Santos    00000280
    Cancel checkout

