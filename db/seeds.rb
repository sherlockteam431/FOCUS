# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
        {:userId => '0001', :firstName => 'Cody', :lastName => 'Leuschner', :totalPoints => '97', :role => "admin"},
        {:userId => '0002', :firstName => 'Nicholas', :lastName => 'Maxwell', :totalPoints => '97', :role => "admin"},
        {:userId => '0003', :firstName => 'Victor', :lastName => 'Martinez', :totalPoints => '97', :role => "admin"},
        {:userId => '0004', :firstName => 'Jacob', :lastName => 'Stafford', :totalPoints => '97', :role => "admin"},
        {:userId => '0005', :firstName => 'Josh', :lastName => 'Hooton', :totalPoints => '97', :role => "admin"},
        {:userId => '0006', :firstName => 'Jason', :lastName => 'Nguyen', :totalPoints => '97', :role => "admin"},
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