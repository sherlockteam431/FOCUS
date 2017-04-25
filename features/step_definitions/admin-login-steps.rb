# features/step_definitions/admin-login-steps.rb

Given(/I am on the home page$/) do
    visit('/home')
end

When(/I click the 'Admin Login' button$/) do
    click_on('Admin Login')
end

Then(/I should see the login screen$/) do
    visit('/admin/login')
end

#
#Given(/I am on the login page$/) do
#    visit('')
#end

#When(/I type in my username and password$/) do
#end
#Then(/$I should be logged in/) do
#    visit('')
#end