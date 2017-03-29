class RemoveEventsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :eventNames, :string
    remove_column :users, :numberOfEvents, :string
    remove_column :users, :totalPoints, :integer
  end
end
