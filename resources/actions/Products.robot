*Settings*
Documentation    Products Action
Library        Collections


*Keywords*
Add the first product to cart
    Click    xpath=(//button[@class='btn btn_primary btn_small btn_inventory'])[1]

Check if exists products in cart
    Wait For Elements State    xpath=//span[@class='shopping_cart_badge']    visible    3    Cart not updated

Check the product status is Remove
    Wait For Elements State    xpath=//button[text()='Remove']    visible    3    Product status not updated

Click remove product from list
    Click              xpath=//button[text()='Remove']
    Take Screenshot

Remove the product from cart
    Click              xpath=//button[@class='btn btn_secondary btn_small cart_button']
    Take Screenshot

Return to product list
    Click    xpath=//button[@id='continue-shopping']

Change sorting to
    [Arguments]          ${orderby}
    Select Options By    xpath=//select[@data-test='product_sort_container']    text    ${orderby}

Get Products from list
   ${listagem}          Get Elements                                            xpath=//div[@class='inventory_item_name']  
   ${products1} =	Create List     
   FOR    ${el}    IN    @{listagem}
      ${txt}=    Get Text    ${el}
      Append to list    ${products1}    ${txt}
   END
   [return]     @{products1}
