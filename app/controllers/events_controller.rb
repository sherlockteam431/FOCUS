class EventsController < ApplicationController
    
    def new
      @event = Event.new
    end
    
    def create
      name = params[:event][:name]
      points =  params[:event][:points]
      if(name == "" || points == "")
        flash[:message] = "Must have a name and points value (can be 0)." 
        redirect_to :controller => "events", :action => :new
        return
      end
      @event = Event.create!(name: name, points: points)
      redirect_to :controller => "events", :action => :show
    end
    
    def index
      @events = Event.all
    end
    
    def show
      @event
    end  
    
end
