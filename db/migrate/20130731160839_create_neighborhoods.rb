class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.text :history
      t.text :demographics
      t.string :image_url
      t.string :center
    end
  end
end
