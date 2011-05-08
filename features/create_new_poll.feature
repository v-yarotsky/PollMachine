Feature: Create new poll
  In order to collect some statistics
  As an interested person
  I want to be able to create a poll
  
  Scenario: New poll page
    Given I am on the home page
    Then I should see "Create a poll"
    When I follow "Create a poll"
    Then I should be on the poll creation page

  @wip
  Scenario: Create new poll
      Given I am on the poll creation page
      When I fill in "poll_title" with "My new poll"
      And I press "Proceed"
      Then I should be on add questions page
      