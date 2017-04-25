# features/admin-login.feature

Feature: Admin login
  
  Scenario: Going to the login page as an admin
    Given I am on the home page as an admin
    When I click the 'Admin Login' button
    Then I should see the admin login screen
  
