# features/step_definitions/admin-login-steps.rb

Given(/I am on the home page as an admin$/) do
    visit('/home')
end

When(/I click the 'Admin Login' button$/) do
    click_on('Admin Login')
end

Then(/I should see the admin login screen$/) do
    visit('/admin/login')
end
