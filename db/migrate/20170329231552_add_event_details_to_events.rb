class AddEventDetailsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :eventType, :string
    add_column :events, :description, :string
    add_column :events, :mentors, :string
    add_column :events, :date, :datetime
  end
end
