# features/step_definitions/create-event-steps.rb

Given(/User is Admin account type$/) do
    visit('/admin/')
end
When(/User is on the Events page$/) do
    visit('/admin/events/')
end
Then(/New Event button is present on page$/) do
    visit('/admin/events/new/')
end