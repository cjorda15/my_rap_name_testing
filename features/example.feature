Feature: Generating Rap Names
  As a user visiting the home page
  I want to provide input
  So that I can see generated rap names

  Scenario: User sees the input fields
    When    I am on the homepage
    Then    I see the input fields

  Scenario: User failing to generate rap name without input provided
    When    I am on the homepage
    And     I submit as a male
    Then    I see the user error shown

  Scenario: User can provide input
    When    I am on the homepage
    And     I provide input for all the fields
    Then    I see input for all the fields

  Scenario: User generates a male rap name
    When    I am on the homepage
    And     I provide input for all the fields
    And     I submit as a male
    Then    I see a rap name

  Scenario: User generates a female rap name
    When    I am on the homepage
    And     I provide input for all the fields
    And     I submit as a female
    Then    I see a rap name

  Scenario: User should see 6 names after submitting 6 times
    When    I am on the homepage
    And     I provide input for all the fields
    And     I submit 6 times
    Then    I see exactly 6 rap names
