class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :userId
      t.string :firstName
      t.string :lastName
      t.string :numberOfEvents 
      t.string :eventNames

      t.timestamps null: false
    end
  end
end
