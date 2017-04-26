class Event < ActiveRecord::Base
    belongs_to :user
    
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
end
