class Event < ActiveRecord::Base
    def self.getEvents(eventNames)
        events = []
        names = eventNames.split(",")
        for name in names
            puts name
            e = Event.find_by(name: name)
            if (e != nil)
                events.push(e)
            end
        end
        return events
    end
end
