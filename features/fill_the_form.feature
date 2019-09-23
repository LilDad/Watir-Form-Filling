Feature: Form filling

  Scenario: Register new account
    Given I am on the site
    When I fill the form
    When I fill the second form
    Then I sent the filled form
