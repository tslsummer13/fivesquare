class Station < ActiveRecord::Base
  has_many :stops
  belongs_to :neighborhood
  has_many :lines, :through => :stops
end
