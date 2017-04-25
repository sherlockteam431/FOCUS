# features/home-page.feature

Feature: Home Page contains Mentor and Admin login buttons
  
  Scenario: User wants to be able to log in to admin account from home page
      Given User is on the home page
      When Tamu-Focus banner is present
      Then User can see the admin log in button
      
  Scenario: User wants to log in to the mentor account from home page
      Given User is on home page, looking for Mentor button
      When Tamu-Focus banner is present on home page
      Then User can see the mentor log in button