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
      #I do not know what the mentor stuff is for but it was trowing errors so I commented it out for now
      mentors     = params[:event][:mentors]
      #You have to parse the date parameters given there is not params[:event][:date] in the hash
      date        = params[:event]["date(1i)"] + "-" + params[:event]["date(2i)"] + "-" + params[:event]["date(3i)"] + " " + params[:event]["date(4i)"] + ":" + params[:event]["date(5i)"] 
      
      #p date + "!!!!!!!!!!!!!!!!!!!!!!!!!"
      #@event = Event.create!(name: name, points: points, eventType: type, description: description, mentors: mentors, date: date)
      @event = Event.create!(name: name, points: points, eventType: type, description: description, date: date)
      redirect_to :controller => "events", :action => :index
    end
    
    def index
      @events = Event.all
    end
    
    def show
      @event = Event.find_by(id: params[:id])
    end  
    
    def edit
      @event = Event.find_by(id: params[:id])
    end
    
    def update
      #cannot add mentors
      event = Event.find_by(id: params[:id])
      event.name = params[:event][:name]
      event.points = params[:event][:points]
      event.description = params[:event][:description]
      event.eventType = params[:event][:eventType]
      event.date = params[:event]["date(1i)"] + "-" + params[:event]["date(2i)"] + "-" + params[:event]["date(3i)"] + " " + params[:event]["date(4i)"] + ":" + params[:event]["date(5i)"]
      event.save
      redirect_to :controller => "events", :action => :show 
    end
    
    def destroy
      event = Event.find_by(id: params[:id])
      event.destroy
      redirect_to :controller => "events", :action => :index
    end
    
end
