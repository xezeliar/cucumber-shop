Feature: Check products in Catalog
  As a owner
  I want to check quantity of products left

  Background:
    Given a product "Bread" with price 20.50 exists and has 5 left
    And a product "Jam" with price 80.00 exists

  Scenario: Check 1 product
    When I check "Bread"
    Then "Bread" have 5 quantity

  Scenario: Check multiple product
    When I check "Bread"
    And I check "Jam"
    Then "Bread" have 5 quantity
    Then "Jam" have 10 quantity