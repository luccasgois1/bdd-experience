Feature: Coffee Catalog
    As a User I want to see the coffee catalog on the main page
    So that I can choose and know more about the avalable products

Scenario: Access the Coffee Catalog on Main page
    When The User access the main page of StarBugs
    Then The User should see the available coffee options

Scenario: Start a purchase of a coffee
    Given The User is on the main page of StartBugs
        And The User wants to buy a "Expresso Gelado"
        And The Product costs "R$ 9,99"
        And The Delivery cost is "R$ 10,00"
    When The User clicks to buy the coffee
    Then The User goes to Checkout page with the details of the Product
        And The total cost must be "R$ 19,99"

Scenario: Start a purchase of a unavailable coffee
    Given The User is on the main page of StartBugs
        And The User wants to buy a "Expresso Cremoso"
    When The User clicks to buy the coffee
    Then The User sees a popup for unavailable product