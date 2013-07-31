class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :category
      t.integer :neighborhood_id
      t.string :hours
      t.string :image_url
    end
  end
end
