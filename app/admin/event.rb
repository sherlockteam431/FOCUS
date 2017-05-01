ActiveAdmin.register Event do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :points, :eventType, :date, :description, user_ids: []
  
  filter :name
  filter :users, :collection => proc { User.all }, :as => :select
  filter :eventType, :label => "Event Type"
  

  index do
    selectable_column
    column :name
    column :points
    column "Event Type", :eventType do  |event|
      event.eventType
    end
    column :date
    column "Mentors Who Attended", :users do |event|
       event.users.map { |user| user.firstName + " " + user.lastName }.to_s.delete("[]\"")
    end
    actions
  end
  
  form title: "Create New Event" do |f|
      inputs 'Create Event' do
          f.input :name
          f.input :description
          f.input :points
          f.input :date, as: :datetime_picker
          f.input :eventType, :label => "Event type"
          f.input :users, :as => :check_boxes, :multiple => true
      end
      f.actions
  end
  
  show do
    attributes_table do
      row :name
      row :points
      row "Event Type", :eventType do  |event|
        event.eventType
      end
      row :date
      row "Mentors Who Attended", :users do |event|
         event.users.map { |user| user.firstName + " " + user.lastName }.to_s.delete("[]\"")
      end
    end
  end
  

end
