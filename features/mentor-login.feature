# features/mentor-login.feature

Feature: Mentor login
  
  Scenario: Going to the login page as a mentor
    Given I am on the home page as a mentor
    When I click the 'Mentor Login' button
    Then I should see the mentor login screen
  
  Scenario: Logging in as a mentor
    Given I am on the mentor login page
    When I put in my ID number
    Then I should be logged in
  
