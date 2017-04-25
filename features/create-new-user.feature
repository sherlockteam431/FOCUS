# features/create-new-user.feature

Feature: Create new user
  
  Scenario: User wants to create a mentor account
      Given User is Admin
      When User enters the mentor's name and presses create account
      Then Mentor account with should be created with relevant data