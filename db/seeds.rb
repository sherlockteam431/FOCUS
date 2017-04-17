# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
        {:userId => '0001', :firstName => 'Cody', :lastName => 'Leuschner', :organization => "TAMU FOCUS"},
        {:userId => '0002', :firstName => 'Nicholas', :lastName => 'Maxwell', :organization => "TAMU FOCUS"},
        {:userId => '0003', :firstName => 'Victor', :lastName => 'Martinez', :organization => "TAMU FOCUS"},
        {:userId => '0004', :firstName => 'Jacob', :lastName => 'Stafford', :organization => "TAMU FOCUS"},
        {:userId => '0005', :firstName => 'Josh', :lastName => 'Hooton', :organization => "TAMU FOCUS"},
        {:userId => '0006', :firstName => 'Jason', :lastName => 'Nguyen', :organization => "TAMU FOCUS"},
    ]
    
users.each do |user|
User.create!(user)

end

events = [
        {:name => 'Event for Justice', :points => '10', :date => DateTime.new(2017, 3, 1, 12), :eventType => 'Networking', :description => "This is a test"},
        {:name => 'Event for Reading', :points => '20', :date => DateTime.new(2017, 3, 3, 12), :eventType => 'Enrichment', :description => "This is only a test"},
      ]
      
events.each do |event|
  Event.create!(event)
end 

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', organization: "TAMU FOCUS")