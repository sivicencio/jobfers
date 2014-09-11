Feature: Update an offer
  As a company user
  In order to have control over my offers
  I have to be able to update the details of an already posted offer

  Scenario: Inside an offer try to update it
    Given I am seeing the offer details
    And I clicked the edit button
    When I modify the title
    And pressed the update button
    Then I can see the updated offer page