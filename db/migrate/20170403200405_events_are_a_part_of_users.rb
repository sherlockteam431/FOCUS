class EventsAreAPartOfUsers < ActiveRecord::Migration
  def change
    remove_column :events, :mentors, :string
    add_column :users, :events, :integer
    #add_index :users, :events
  end
end
