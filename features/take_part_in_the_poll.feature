Feature: Take part in the poll
  In order to take part in the poll
  As a user
  I want to be able to answer the questions of the selected poll
  
  Background:
    Given there is only a poll titled "Poll#1", which has three questions
    
  Scenario: view the main page of the poll
    Given I am on the home page
    When I follow "Take part"
    Then I should see "Poll#1" within "h1"
    And I should see "3 questions"
    And I should see "Proceed"
  
  Scenario: answer questions
    Given I am on the main page of the poll
    When I follow "Proceed"
    Then I should be on the questions page
    When I choose "Answer #1" within "#question_1"
    And I choose "Answer #2" within "#question_2"
    And I choose "Answer #1" within "#question_3"
    And I press "Submit"
    Then I should see "Thank you"
  
  @wip
  Scenario: do not allow to participate second again
    Given I am on the main page of the poll
    When I follow "Proceed"
    Then I should be on the questions page
    When I choose "Answer #1" within "#question_1"
    And I choose "Answer #2" within "#question_2"
    And I choose "Answer #1" within "#question_3"
    And I press "Submit"
    Then I should see "Thank you"
    When I go to the main page of the poll
    Then I should see "You have already taken part in this poll"
    When I go to the questions page
    Then I should see "You have already taken part in this poll"
  