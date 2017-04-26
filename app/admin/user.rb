ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    permit_params :firstName, :lastName, :userId, :organization, event_ids: []
    
    index do |users|
        selectable_column
        id_column
        column :firstName
        column :lastName
        column :organization
        column :hasComment
        column :comment
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
            f.input :organization
            #f.input :events, :as => :select
            f.input :events, :as => :select, :multiple => true, :input_html => { :class => :select3, :style => "width: 100%;" }

        end
        f.actions
    end
    

    
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
