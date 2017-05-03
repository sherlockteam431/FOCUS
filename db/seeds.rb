# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [{:userId => '1', :firstName => 'Victor', :lastName => 'Martinez', :organization => "TAMU FOCUS"}
    ]
    
users.each do |user|
User.create!(user)

end

AdminUser.create!(email: 'pa-garza@tamu.edu', password: 'Password17', password_confirmation: 'Password17', organization: "TAMU FOCUS")

