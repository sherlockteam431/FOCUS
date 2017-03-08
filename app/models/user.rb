class User < ActiveRecord::Base
    def self.getHeadings
        return self.column_names.drop(1) #i dont want to show the id field
    end
    
    def attendedEvent(eventName, userId)
        events = User.find_by(firstName: firstName).eventNames.split(",")
        if (events.include?(eventName))
            return Event.find_by(name: eventName).points
        else 
            return 0
        end
        
    end
end
