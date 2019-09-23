class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.references :passenger, index: true, foreign_key: true
      t.references :taxi, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
