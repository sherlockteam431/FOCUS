# features/step_definitions/admin-login-steps.rb

Given(/I am on the home page$/) do
    visit('/home')
end

When(/I click the 'Admin Login' button$/) do
    find(Admin Login).click
end

Then(/I should see the login screen$/) do
    visit('/admin/login')
end
