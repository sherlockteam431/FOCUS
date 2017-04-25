# features/step_definitions/mentor-login-steps.rb

Given(/I am on the home page as a mentor$/) do
    visit('/home')
end

When(/I click the 'Mentor Login' button$/) do
    click_on('Mentor Login')
end

Then(/I should see the mentor login screen$/) do
    visit('/login')
end
