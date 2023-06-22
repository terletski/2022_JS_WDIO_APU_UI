Feature: Bug

@bug
Scenario: Resetting app state
    Given I open 'https://www.saucedemo.com/' url
    When I login as 'Standard' user
    Then I see 'Products' page url
    When I select 'Price (low to high)' option in 'Sorting dropdown menu' list on 'Products' page
    And  I click 'Backpack add to cart button' on 'Products' page
    Then I see 'Backpack remove from cart button' element on 'Products' page
    When I click 'Burger-menu button' on 'Products' page in 'Header' component
    Then I see 'Side menu' element on 'Products' page in 'Menu' component
    When I click 'Reset app state' on 'Products' page in 'Menu' component
    Then I don't see 'Backpack remove from cart button' element on 'Products' page
