Feature: Login User

  As an example User
  I want to login my Account

  Scenario: correct login
    Given I am registered
    When I try to login
    Then I will be logged in

  Scenario: login with wrong password
    Given I am registered
    When I try to login
    Then I won't be logged in
    And drop wrong password error

  Scenario: login with wrong username
    Given I am not registered
    When I try to login
    Then I wont't be logged in
    And drop wrong username error