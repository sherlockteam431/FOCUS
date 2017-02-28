class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :userId
      t.string :firstName
      t.string :lastName

      t.timestamps null: false
    end
  end
end
