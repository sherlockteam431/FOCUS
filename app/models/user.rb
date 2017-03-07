class User < ActiveRecord::Base
    def self.getHeadings
        return self.column_names.drop(1) #i dont want to show the id field
    end
end
