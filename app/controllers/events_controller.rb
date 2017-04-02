class EventsController < ApplicationController
    
    def new
      @event = Event.new
    end
    
    def create
      for obj in params[:event] do
        if(obj == nil || obj == "")
          flash[:message] = "Must fill in #{obj.to_s} to complete the form!" 
          redirect_to :controller => "events", :action => :new
          return
        end
      end
      
      name        = params[:event][:name]
      points      = params[:event][:points]
      type        = params[:event][:eventType]
      description = params[:event][:description]
      mentors     = params[:event][:mentors]
      date        = params[:event][:date]   
      
      
      @event = Event.create!(name: name, points: points, eventType: type, description: description, mentors: mentors, date: date)
      redirect_to :controller => "events", :action => :show
    end
    
    def index
      @events = Event.all
    end
    
    def show
      @event
    end  
    
end
