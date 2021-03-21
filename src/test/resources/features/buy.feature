Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given a product "Bread" with price 20.50 exists and has 5 left
    And a product "Jam" with price 80.00 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    Then total should be 121.00

    Scenario: Buy one product with negative quantity
        When I buy "Bread" with quantity -1
        Then total should be 0

    Scenario: Buy product more tank quantity in stock
        When I buy "Bread" with quantity 6
        Then total should be 0

