# features/mentor-logout.feature

Feature: Mentor user can log out
  
  Scenario: Mentor User logs out
      Given User is Mentor
      When User presses the log out button
      Then User presented with home page