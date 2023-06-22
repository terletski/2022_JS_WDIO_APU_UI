Feature: End to end scenario by Vitaly

  @Vitaly
  Scenario: Buy product in the online shop
    Given I open 'https://www.saucedemo.com/' url
    When I login as 'Standard' user
    Then I see 'Products' page url
    When I select 'Name (Z to A)' option in 'Sorting dropdown menu' list on 'Products' page
    And I click 'Red t-shirt add to cart button' on 'Products' page
    Then I see 'Cart badge' element on 'Products' page in 'Header' component
    When I click 'Cart icon' on 'Products' page in 'Header' component
    Then I see 'Cart' page url
    When I click 'Checkout button' on 'Cart' page 
    Then I see 'Checkout information' page url
    When I enter random data 'random First Name' in 'Username field' input on 'Checkout information' page
    And  I enter random data 'random Last Name' in 'Lastname field' input on 'Checkout information' page
    And  I enter random data 'random Zipcode' in 'Zipcode field' input on 'Checkout information' page
    And I click 'Continue Button' on 'Checkout information' page
    Then I see 'Checkout overview' page url
    When I click 'Finish button' on 'Checkout overview' page
    Then I see 'Checkout complete' page url
    When I click 'Back home button' on 'Checkout complete' page
    Then I see 'Products' page url
    When I click 'Burger-menu button' on 'Products' page in 'Header' component
    Then I see 'Side menu' element on 'Products' page in 'Menu' component
    When I click 'Logout' on 'Products' page in 'Menu' component
    Then I see 'Login' page url