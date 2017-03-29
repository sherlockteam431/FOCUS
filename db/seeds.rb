# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
        {:userId => '0001', :firstName => 'Cody', :lastName => 'Leuschner', :role => "admin"},
        {:userId => '0002', :firstName => 'Nicholas', :lastName => 'Maxwell', :role => "admin"},
        {:userId => '0003', :firstName => 'Victor', :lastName => 'Martinez', :role => "admin"},
        {:userId => '0004', :firstName => 'Jacob', :lastName => 'Stafford', :role => "admin"},
        {:userId => '0005', :firstName => 'Josh', :lastName => 'Hooton', :role => "admin"},
        {:userId => '0006', :firstName => 'Jason', :lastName => 'Nguyen', :role => "admin"},
    ]
    
users.each do |user|
User.create!(user)

end

events = [{:name => 'Dummy 1', :points => '10', :mentors => '0001, 0002, 0003', :date => DateTime.new(2017, 3, 1, 12), :eventType => 'Other', :description => "This is a test"},
          {:name => 'Dummy 2', :points => '20', :mentors => '0002, 0004, 0006', :date => DateTime.new(2017, 3, 3, 12), :eventType => 'Other', :description => "This is only a test"},
      ]
      
events.each do |event|
  Event.create!(event)
  
end 