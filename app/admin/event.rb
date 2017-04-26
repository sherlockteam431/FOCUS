ActiveAdmin.register Event do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :points, :eventType, :date, :description, user_ids: []
  
      index do
        selectable_column
        column :name
        column :points
        column :eventType
        column :date
        column "Mentors Who Attended", :users do |event|
           event.users.map { |user| user.firstName + " " + user.lastName }.to_s.delete("[]\"")
        end
        actions
    end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
