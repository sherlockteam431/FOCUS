# features/step_definitions/create-new-user-steps.rb
Given(/User is Admin$/) do
    visit('/admin')
end

When(/User enters the mentor's name and presses create account$/) do
    visit('/admin/users')
end

Then(/Mentor account with should be created with relevant data$/) do
    visit('/admin/users/new')
end
