class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.integer :passenger_id, foreign_key: true
      t.integer :taxi_id, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
