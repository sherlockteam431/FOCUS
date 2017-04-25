ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    permit_params :firstName, :lastName, :userId, :organization
    
    
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
    
    form title: "Create new user" do |f|
        inputs 'details' do
            f.input :firstName
            f.input :lastName
            f.input :organization
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
