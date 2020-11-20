Feature: Register New User

  an example User
  want to register a new account

  Scenario: correct registration
    Given e-mail address is not used
    And all required fields have a valid value
    Then send a verification mail to the e-mail address
    And send information to the database
    When e-mail is confirmed unlock the account
    And write information in the database

  Scenario: register an already used e-mail address
    Given e-mail address is already used
    And all required fields have a valid value
    Then show an information message that e-mail address is already used

  Scenario: invalid value in a required field
    Given e-Mail address is not used
    And One or more required fields have an invalid value
    Then show an information message that one or more fields has an invalid value