
Feature: Login to SauceDemo

  Scenario: Successful login with valid credentials
    Given I am on the SauceDemo login page
    When I enter username "standard_user"
    And I enter password "secret_sauce"
    And I click the login button
    Then I should be redirected to the inventory page

  Scenario: Failed login with invalid credentials
    Given I am on the SauceDemo login page
    When I enter username "invalid_user"
    And I enter password "wrong_password"
    And I click the login button
    Then I should see an error message "Epic sadface: Username and password do not match any user in this service"