class ChangeFirstNameLastNameAndUserIdColumnToNotBeNullable < ActiveRecord::Migration
  def change
    change_column_null :users, :firstName, false
    change_column_null :users, :lastName, false
    change_column_null :users, :userId, false
  end
end
