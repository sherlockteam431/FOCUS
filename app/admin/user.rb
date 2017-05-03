ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    permit_params :firstName, :lastName, :userId, :organization, :hasComment, :comment, event_ids: []
    
    def getPoints
        points = 0
        events = self.events
        events.each do |e|
            points += e.points
        end
        return points
    end
    
    filter :events, :collection => proc { Event.all }, :as => :select
    filter :firstName
    filter :lastName
    filter :organization
    
    index do |users|
        selectable_column
        column :userId
        column :firstName
        column :lastName
        column :organization
        column :hasComment
        column :comment
        column "Total Points", :event do |user|
            user.events.inject(0){|sum,x| sum + x.points }
        end
        column "Events Attended", :events do |user|
           user.events.map { |event| event.name  }.to_s.delete("[]\"")
        end
        actions
    end
    
    #filter :events_id_not_null, label: "", as: :boolean 
    
    controller do
        def create
            @user = User.new(permitted_params[:user])
            
        uniqId = false
         #check if client userId already exists. If it does generate another id
        while !uniqId do
        newUserId = Random.rand(9999)
        check = User.where(userId: newUserId)
        if(check == nil || check == [])
          uniqId = true
        end
        end
        @user.userId = newUserId;
        create!
        end
    end
    
    form title: "Create New User" do |f|
        inputs 'Create User' do
            f.input :firstName
            f.input :lastName
            f.input :organization, :as => :select, :multiple => false, :collection => ["IGNITE", "FOCUS"]
            f.input :hasComment, :label => "Has Comment?"
            f.input :comment
            f.input :events, :as => :check_boxes, :multiple => true
        end
        f.actions
    end
    
    show do
      attributes_table do
        row :firstName
        row :lastName
        row :organization
        row :hasComment
        row :comment
        row "Events Attended", :events do |user|
           user.events.map { |event| event.name  }.to_s.delete("[]\"")
        end
    end
end
    csv do
        column :userId
        column :firstName
        column :lastName
        column :organization
        column :comment
        column ("Total Points")  {|user|
            user.events.inject(0){|sum,x| sum + x.points }}
        column ("Events Attended") {|user|
           user.events.map { |event| event.name  }.to_s.delete("[]\"")}
    end
    
    
    
    
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
