class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :address
      t.integer :neighborhood_id
      t.string :name
    end
  end
end
