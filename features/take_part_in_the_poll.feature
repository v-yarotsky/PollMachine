Feature: Take part in the poll
  In order to take part in the poll
  As a user
  I want to be able to answer the questions of the selected poll
  
  @wip
  Scenario: view the main page of the poll
    Given there is a poll titled "Poll#1", which has some questions
    And I am on the home page
    When I follow "Take part"
    Then I should see "Poll#1" within "h1"
    And I should see "3 questions"
    And I should see "Proceed"
  
  
