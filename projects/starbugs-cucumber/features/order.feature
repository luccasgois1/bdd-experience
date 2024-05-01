Feature: Coffee Order
    As a User I want to order a coffee on the website
    So that I can receive it on my house

  Scenario: Order a coffee
    Given The User is on the main page of StartBugs
        And The User wants to buy a product:
        | name | Expresso Americano |
    When The User clicks to buy the coffee
        And The User fills his address information:
        | zip_code   | 01025020 |
        | number     |     1000 |
        | complement | house 3  |
        And The User choose to pay with "CARTÃO DE CRÉDITO"
        And The User confirms the order
    Then The User sees the confirmation page
        And The User sees that the delivery time is "20 min - 30 min"
