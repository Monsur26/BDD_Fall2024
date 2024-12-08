Feature: This is a feature file for Rainforest Homepage

@Smoke
  Scenario: Valid username Test
    Given User lands on rainforest homepage
    When User clicks and enters valid username on the username field
    And User clicks and enters valid password on the password field
    When User clicks on the Login button
    Then User is successfully logged in

@Smoke
  Scenario: Searching for a valid item using search bar
    Given User lands on rainforest homepage
    When User clicks on the search bar and enter for a valid "item"
    And User clicks on the Saerch Button
    Then User should see the search result

  @Three
  Scenario Outline: Searching for multiple items
    Given User lands on rainforest homepage
    When User searches for an "<item>"
    And User clicks on the Saerch Button
    Then User should see the search result

    Examples:
    |item|
    |Rainforest|
    |Tree|

    @Four
    Scenario Outline: Test for multiple username and password
      Given User lands on rainforest homepage
      When User enters username "<Username>"
      And User enters password "<Password>"
      When User clicks on the Login button
      Then User is successfully logged if user is valid in or see an error message if user is invalid

      Examples:
      |Username||Password|
      |Username1     ||Password1       |
      |Userq         ||Passq           |
      |Demo          ||dummy           |
      |Yuser         ||YPassword       |