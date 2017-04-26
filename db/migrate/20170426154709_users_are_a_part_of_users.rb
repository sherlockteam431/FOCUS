class UsersAreAPartOfUsers < ActiveRecord::Migration
  def change
      add_column :events, :users, :integer
      #add_index :events, :users
      add_index :events_users, [:user_id, :event_id]

  end
end
