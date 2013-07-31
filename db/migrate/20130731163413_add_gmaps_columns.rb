class AddGmapsColumns < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :latitude,  :float
    add_column :neighborhoods, :longitude, :float
    add_column :neighborhoods, :gmaps, :boolean

    add_column :businesses, :latitude,  :float
    add_column :businesses, :longitude, :float
    add_column :businesses, :gmaps, :boolean
  end
end
