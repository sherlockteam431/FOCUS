class AddTotalPointsColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :totalPoints, :integer, :default => 0
  end
end
