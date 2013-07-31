class Neighborhood < ActiveRecord::Base
  has_many :businesses
  has_many :stations
end
