Feature: Select Dataset

As an example user
I want to select a dataset to visualize data

  Scenario: dataset found
    Given user is logged in
    When user selects social media source
    And user entered social media username
    And select dataset button pressed
    Then Add dataset to users datasets

  Scenario: dataset not found
    Given user is logged in
    When user selects social media source
    And user entered social media username
    And select dataset button pressed
    Then drop data not found error

