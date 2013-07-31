class Business < ActiveRecord::Base
  belongs_to :neighborhood

  acts_as_gmappable

  def gmaps4rails_address
    return self.address
  end
end
