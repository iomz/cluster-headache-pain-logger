class Drug < ActiveRecord::Base
  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :price, :general_name
end
