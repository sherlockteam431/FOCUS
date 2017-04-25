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

Given(/I am on the mentor login page$/) do
    visit('/login')
end

When(/I put in my ID number/) do
    fill_in('Number ID', :with => '5')
    click_on('Log in')
end
    
Then(/I should be logged in$/) do
    visit('/users/5')
end

