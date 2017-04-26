class User < ActiveRecord::Base
    has_and_belongs_to_many :events, join_table: 'events_users'
    accepts_nested_attributes_for :events
    
    def self.getHeadings
        return self.column_names.drop(1) #i dont want to show the id field
    end
    
    def getPoints
        points = 0
        events = self.events
        events.each do |e|
            points += e.points
        end
        return points
    end
    
    def to_s
        "#{firstName} #{lastName}"
    end
end
