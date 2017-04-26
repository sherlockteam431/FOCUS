# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
        {:userId => '1234', :firstName => 'Cody', :lastName => 'Leuschner', :organization => "TAMU FOCUS"},
        {:userId => '5678', :firstName => 'Nicholas', :lastName => 'Maxwell', :organization => "TAMU FOCUS"},
        {:userId => '9012', :firstName => 'Victor', :lastName => 'Martinez', :organization => "TAMU FOCUS"},
        {:userId => '3456', :firstName => 'Jacob', :lastName => 'Stafford', :organization => "TAMU FOCUS"},
        {:userId => '7890', :firstName => 'Josh', :lastName => 'Hooton', :organization => "TAMU FOCUS"},
        {:userId => '1020', :firstName => 'Jason', :lastName => 'Nguyen', :organization => "TAMU FOCUS"},
    ]
    
users.each do |user|
User.create!(user)

end

events = [
        {:name => 'Event for Justice', :points => '10', :date => DateTime.new(2017, 2, 4, 17), :eventType => 'Networking', :description => "A longer description is required for testing that is why I am making a relatively longer description for this event!"},
        {:name => 'Event for Reading', :points => '20', :date => DateTime.new(2017, 3, 3, 12), :eventType => 'Enrichment', :description => "This is only a test"},
      ]
      
events.each do |event|
  Event.create!(event)
end 

AdminUser.create!(email: 'pa-garza@tamu.edu', password: 'Password17', password_confirmation: 'Password17', organization: "TAMU FOCUS")
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', organization: "TAMU FOCUS")

