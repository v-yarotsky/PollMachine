Feature: Polls list
  In order to be able to select poll I want to take part in
  As a regular user
  I want to see a list of available polls
  
  Scenario: Polls list
    Given there are polls titled Tea, Pizza
    When I go to the home page
    Then I should see "Tea"
    And I should see "Pizza"