class Neighborhood < ActiveRecord::Base
  has_many :businesses
  has_many :stations

  acts_as_gmappable

  def gmaps4rails_address
    return self.center
  end

  def gmaps4rails_infowindow
    return self.name
  end
end
