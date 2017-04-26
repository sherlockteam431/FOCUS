# features/step_definitions/mentor-logout-steps.rb

Given(/User is Mentor$/) do
    visit('/users/1')
end
#When(/User presses the log out button$/) do
    # # click_link('logout_path')
    # page.all('.nav navbar-nav navbar-right').click_link
    # within("//li[@id='employee']") do
    #   fill_in 'Name', :with => 'Jimmy'
    # end

    #cannot get this section to work.  Many a line has been tried.  I do not know.

# end
Then(/User presented with home page$/) do
    visit('/home')
end