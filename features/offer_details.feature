Feature: Offer Details
  As a regular user
  In order to understand what a company wants
  I have to be able to see the whole details of an offer

  Scenario: Click an offer to see details
    Given I am at the homepage
    When I click an offer
    Then the details of an offer are displayed