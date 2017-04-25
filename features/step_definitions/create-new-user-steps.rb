# features/step_definitions/create-new-user-steps.rb
#do
#    Capybara.current_driver = :selenium
#end
Given(/^User is Admin$/) do
    Capybara.current_driver = :selenium
    visit('https://project-sherlock-nmaxwell2.c9users.io/admin/user')
end

When(/^User enters the mentor's name and presses create account$/) do
    find('New User').click  
    #visit('/admin/user/new')    #ActiveAdmin is a black box; what is the name of this button?  Would rather not visit the URL
    fill_in('firstName', :with => 'firstname')
    fill_in('lastName', :with => 'lastname')
    fill_in('organization', :with => 'organizationname')
    find('Create User').click
end

Then(/^Mentor account with should be created with name firstname lastname$/) do
    
end


Then(/^I should see a thank you message$/) do
  page.has_content?("Thank you")
end