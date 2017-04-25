# features/step_definitions/home-page.rb

Given(/User is on the home page$/) do
    visit('/home')
end
When(/Tamu-Focus banner is present$/) do
    page.should have_content(/TAMU FOCUS/)
end
Then(/User can see the admin log in button$/) do
    page.should have_content(/Admin Login/)
end


Given(/User is on home page, looking for Mentor button$/) do
    visit('/home')
end
When(/Tamu-Focus banner is present on home page$/) do
    page.should have_content(/TAMU FOCUS/)
end
Then(/User can see the mentor log in button$/) do
    page.should have_content(/Mentor Login/)
end