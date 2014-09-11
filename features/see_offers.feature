Feature: See offers
  As a regular user
  In order to know the current job environment
  I want to be able to see different offers

  Scenario: Viewing homepage
    Given I know Jobfers is the most popular job platform
    When I go to the homepage
    Then I should see at least one offer

  Scenario: See offer information
    Given I know there are offers
    When I look a specific offer
    Then I should see the title and the dedication