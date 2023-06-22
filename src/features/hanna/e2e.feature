@e2e
Feature: E2E scenario

Scenario: 'I login standart user '
    Given  I open 'https://www.saucedemo.com/' url
    When  I login as 'Standard' user
    Then  I see 'Products' page url
    When I click on 'Name (Z to A)' element in 'Sorting dropdown menu' dropdown on 'Products' page
    Then I see 'Dropdown active element' changed text on 'NAME (Z TO A)' on 'Products' page
    And I see 'Product items title' sorter by 'Name (Z to A)' on 'Products' page
    When I click 'Backpack add to cart button' on 'Products' page
    And I click 'Fleece jacket add to cart button' on 'Products' page
    Then I click 'Cart icon' on 'Products' page in 'Header' component
    And I see 'Cart' page url
    Then I click 'Checkout button' on 'Cart' page 
    And I see 'Checkout information' page url
    Then I enter 'Anna' in 'Username field' input on 'Checkout information' page
    And I enter 'Bichevskaya' in 'Lastname field' input on 'Checkout information' page
    And I enter '220000' in 'Zipcode field' input on 'Checkout information' page
    And I click 'Continue Button' on 'Checkout information' page 
    Then I see 'Checkout overview' page url
    And I click 'Finish button' on 'Checkout overview' page
    And I see 'Checkout complete' page url 
    When I click 'Back home button' on 'Checkout complete' page
    Then I see 'Products' page url
