class AddCommentAndOrganizationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :comment, :string
    add_column :users, :hasComment, :boolean
    add_column :users, :organization, :string
    add_column :admin_users, :organization, :string
  end
end
