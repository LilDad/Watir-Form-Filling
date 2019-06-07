Feature: Form filling

  Scenario: Login form testing
    Given I am on the site
    When I fill the form
    When I fill the second form
    Then I sent the filled form
