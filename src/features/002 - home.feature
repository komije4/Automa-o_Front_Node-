Feature: Página Home – Adição de produtos no carrinho
    Cliente visualiza o produto no seu carrinho de compras atual.

    Scenario: Adição de <N> produtos no carrinho, utilizando o nome como referência.
        Given I open the url "http://automationpractice.com"
        Then  I expect that the title is "My Store"
        When  I find element "Faded Short Sleeve T-shirts" and click
        Then  I expect that the title is "Faded Short Sleeve T-shirts - My Store"
        And   I click on the button "//*[@id='add_to_cart']/button"
        Then  I expect that element "//*[@id='layer_cart']/div[1]/div[1]/h2" contains the text "Product successfully added to your shopping cart"    
        And   I click on the button "//*[@id='layer_cart']/div[1]/div[2]/div[4]/span/span"

        And   I click on the element "//*[@id='columns']/div[1]/a[1]/i"
        Then  I wait on element "//*[@id='home-page-tabs']/li[1]/a" for 3000ms to be displayed

        Then  I expect that the title is "My Store"
        When  I find element "Printed Dress" and click
        Then  I expect that the title is "Printed Dress - My Store"
        And   I click on the button "//*[@id='add_to_cart']/button"
        Then  I expect that element "//*[@id='layer_cart']/div[1]/div[1]/h2" contains the text "Product successfully added to your shopping cart"
        And   I click on the button "//*[@id='layer_cart']/div[1]/div[2]/div[4]/a/span"
        Then  I expect that the title is "Order - My Store"
        

      
