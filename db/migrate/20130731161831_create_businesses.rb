class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :yelp_url
      t.integer :neighborhood_id
      t.string :image_url
      t.string :address
    end
  end
end
