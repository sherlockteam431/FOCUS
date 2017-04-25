# features/create-event.feature

Feature: Admin is able to create an event
  
  Scenario: Admin creates an event
      Given User is Admin account type
      When User is on the Events page
      Then New Event button is present on page