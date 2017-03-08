# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
        {:userId => '3', :firstName => 'Victor3', :lastName => 'Martinez', :created_at => '12:00', :updated_at => '1:00', :totalPoints => '97', :eventNames => 'Dummy 1,Dummy 2'},
        {:userId => '0', :firstName => 'Victor', :lastName => 'Martinez', :created_at => '12:00', :updated_at => '1:00', :totalPoints => '100', :eventNames => 'Dummy 1'},
        {:userId => '1', :firstName => 'Victor1', :lastName => 'Martinez', :created_at => '12:00', :updated_at => '1:00', :totalPoints => '99', :eventNames => 'Dummy 1'},
        {:userId => '4', :firstName => 'Victor4', :lastName => 'Martinez', :created_at => '12:00', :updated_at => '1:00', :totalPoints => '96', :eventNames => 'Dummy 1'},
        {:userId => '2', :firstName => 'Victor2', :lastName => 'Martinez', :created_at => '12:00', :updated_at => '1:00', :totalPoints => '98', :eventNames => 'Dummy 1'},
    ]
    
users.each do |user|
User.create!(user)

end

events = [{:name => 'Dummy 1', :points => '10'},
          {:name => 'Dummy 2', :points => '20'},
      ]
      
events.each do |event|
  Event.create!(event)
  
end 