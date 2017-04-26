class Event < ActiveRecord::Base
    has_and_belongs_to_many :users, join_table: 'events_users'
    accepts_nested_attributes_for :users

    def self.getEventsbyName(eventNames)
        events = []
        names = eventNames.split(",")
        for name in names
            e = Event.find_by(name: name)
            if (e != nil)
                events.push(e)
            end
        end
        return events
    end
    
    def to_s
        "#{name}"
    end
end
