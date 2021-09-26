*Settings*
Documentation    Products Test Suite

Resource         ${EXECDIR}/resources/Base.robot
Suite Setup      Go to home page
Test Teardown    Finish Test

*Test Cases*
Test add a product to cart remove by item
   Add the first product to cart
   Check if exists products in cart
   Check the product status is Remove
   Click remove product from list

Test add a product to cart remove by cart
   Add the first product to cart
   Check if exists products in cart
   Check the product status is Remove
   Go to cart 
   Remove the product from cart
   Return to product list

Test Elements ssss
   Change sorting to   Name (A to Z)
   @{firstRead}=        Get Products from list
   Change sorting to   Name (Z to A)
   @{sencRead}=        Get Products from list      
   Should Not Be Equal	${firstRead}	${sencRead}	






