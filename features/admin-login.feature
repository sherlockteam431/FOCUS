# features/admin-login.feature

Feature: Admin login
  
  Scenario: Going to the login page
    Given I am on the home page
    When I click the 'Admin Login' button
    Then I should see the login screen
  
  Scenario: Logging in with credentials
    Given I am on the login page
    When I type in my username and password
    Then I should be logged in
  
